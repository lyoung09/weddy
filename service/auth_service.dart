import 'dart:io';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weddynew/apis/common/app_common.pb.dart';
import 'package:weddynew/repository/safe_api.dart';

import '../apis/auth/app_auth.pbgrpc.dart';
import '../apis/noauth/app_auth_no_auth.pb.dart';
import '../apis/noauth/app_auth_no_auth.pbgrpc.dart';
import '../apis/result.dart';

class AuthService {
  AuthService(this.authClient, this.noAuthClient);

  final AppAuthServiceClient authClient;
  final AppAuthServiceWithoutTokenClient noAuthClient;

  Future<Result<SignupResponse>> signup(
      String id,
      String name,
      String password,
      int phoneNumber,
      int relationshipCode,
      String userEmail,
      String ceremonyDate,
      int weddingBudget,
      int weddingAdminDivisionCode,
      String? deviceId,
      String? pushToken) {
    DateFormat formatter = DateFormat('yyyyMMdd');
    String date = formatter.format(DateTime.parse(ceremonyDate));

    return safeApiCall(noAuthClient.signup(SignupRequest(
        deviceId: deviceId,
        pushToken: pushToken,
        userId: id,
        userName: name,
        password: password,
        phoneNumber: phoneNumber.toString(),
        relationshipCode: relationshipCode,
        userEmail: userEmail,
        ceremonyDate: date,
        weddingBudget: Int64(weddingBudget),
        weddingAdminDivisionCode: Int64(weddingAdminDivisionCode),
        userPlatform: Platform.isAndroid ? "AOS" : "IOS")));
  }

  Future<Result<String>> signIn(
      String id, String password, String? deviceId, String? pushToken) {
    debugPrint(id.toString() +
        password.toString() +
        deviceId.toString() +
        pushToken.toString() +
        "abcde");
    return safeApiCall(noAuthClient.signin(SigninRequest(
            userId: id,
            password: password,
            deviceId: deviceId,
            pushToken: pushToken,
            userPlatform: Platform.isAndroid ? "AOS" : "IOS")))
        .map((result) => result.authToken);
  }

  Future<Result<bool>> isDuplicatedId(String id) {
    return safeApiCall(
            noAuthClient.isDuplicatedId(IsDuplicatedIdRequest(userId: id)))
        .map((result) => result.isDuplicatedId);
  }

  Future<Result<void>> smsVerifyRequest(String phoneNumber) {
    return safeApiCall(
        noAuthClient.sendAuthSms(AuthRequest(phoneNumber: phoneNumber)));
  }

  Future<Result<void>> verifySms(String phoneNumber, String pinCode) {
    return safeApiCall(noAuthClient.verifyAuthSms(
        AuthRequest(phoneNumber: phoneNumber, authValue: pinCode)));
  }

  Future<Result<String>> forgotUserId(String phoneNumber) {
    return safeApiCall(noAuthClient
            .forgotUserId(ForgotUserIdRequest(phoneNumber: phoneNumber)))
        .map((result) => "");
  }

  Future<Result<String>> forgotPassword(String userId, String phoneNumber) {
    return safeApiCall(noAuthClient.forgotPassword(
            ForgotPasswordRequest(userId: userId, phoneNumber: phoneNumber)))
        .map((result) => "");
  }

  Future<Result<AppResultResponse>> changePassword(
      String oldPassword, String newPassword) {
    return safeApiCall(authClient.changePassword(ChangePasswordRequest(
            oldPassword: oldPassword, newPassword: newPassword)))
        .then((value) => value);
  }

  Future<Result<void>> signOut(String deviceId) {
    return safeApiCall(authClient.signout(SignoutRequest(deviceId: deviceId)));
  }

  Future<Result<void>> withdrawAccount(String password) {
    return safeApiCall(
        authClient.withdrawAccount(AccountWithdrawRequest(password: password)));
  }
}
