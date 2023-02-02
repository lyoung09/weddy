import 'dart:io';
import 'package:weddynew/repository/safe_api.dart';

import '../apis/auth/app_auth.pbgrpc.dart';
import '../apis/noauth/app_auth_no_auth.pbgrpc.dart';
import '../apis/result.dart';

class AuthService {
  AuthService(this.authClient, this.noAuthClient);

  final AppAuthServiceClient authClient;
  final AppAuthServiceWithoutTokenClient noAuthClient;

  Future<Result<SignupResponse>> signup(String id, String name, String password,
      String phoneNumber, int relationshipCode) {
    return safeApiCall(noAuthClient.signup(SignupRequest(
        userId: id,
        userName: name,
        password: password,
        phoneNumber: phoneNumber,
        relationshipCode: relationshipCode,
        userPlatform: Platform.isAndroid ? "AOS" : "IOS")));
  }

  Future<Result<String>> signIn(
      String id, String password, String? deviceId, String? pushToken) {
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

  Future<Result<void>> signOut(String deviceId) {
    return safeApiCall(authClient.signout(SignoutRequest(deviceId: deviceId)));
  }

  Future<Result<void>> withdrawAccount(String password) {
    return safeApiCall(
        authClient.withdrawAccount(AccountWithdrawRequest(password: password)));
  }
}
