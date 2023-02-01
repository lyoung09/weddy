import 'dart:ffi';

import 'package:weddy_ceres/repository/service/auth_service.dart';
import 'package:weddy_ceres/repository/service/biz_api_service.dart';

import '../apis/preferences.dart';
import '../apis/result.dart';
import '../dao/user_profile_dao.dart';
import '../model/user_profile.dart';

class AuthRepository {
  const AuthRepository(
      {required this.dao,
      required this.service,
      required this.bizService,
      required this.preference});

  final UserProfileDao dao;
  final AuthService service;
  final BizApiService bizService;

  final PreferencesCustom preference;

  Future<Result<void>> signup(String id, String password, String phoneNumber,
      String name, relationshipCode) {
    return service.signup(id, name, password, phoneNumber, relationshipCode);
  }

  Future<Result<String>> signIn(String id, String password, bool autoLogin) {
    return service
        .signIn(id, password, preference.deviceId, preference.pushToken)
        .then((result) async {
      if (result is Success) {
        preference.accessToken = (result as Success).result;
        final userProfileResult = await bizService.getUserProfile();
        if (userProfileResult.isSuccess) {
          final profile = await dao.getProfile();
          if (profile != null) {
            await dao.deleteAll();
          }
          await dao.insertProfile((userProfileResult as Success).result);
        }
        return result;
      } else {
        return result;
      }
    });
  }

  Future<Result<bool>> isDuplicatedId(String id) {
    return service.isDuplicatedId(id);
  }

  Future<Result<void>> smsVerifyRequest(String phoneNumber) {
    return service.smsVerifyRequest(phoneNumber);
  }

  Future<Result<void>> verifySms(String phoneNumber, String pinCode) {
    return service.verifySms(phoneNumber, pinCode);
  }

  Future<Result<void>> getUserProfile() {
    return bizService.getUserProfile().then((result) async {
      if (result.isSuccess) {
        final profile = await dao.getProfile();
        if (profile != null) {
          await dao.deleteAll();
        }
        await dao.insertProfile((result as Success).result);
      }
      return result;
    });
  }

  Future<UserProfile?> getLocalUserProfile() {
    return dao.getProfile();
  }

  Future<void> logout() async => dao.deleteAll();

  Future<Result<void>> updateUserProfile(UserProfile userProfile) {
    return bizService.updateUserProfile(userProfile).then((result) async {
      if (result.isSuccess) {
        final profile = await dao.getProfile();
        if (profile != null) {
          await dao.deleteAll();
        }
        await dao.insertProfile(userProfile);
      }
      return result.map((result) => Void);
    });
  }

  Future<void> deleteAll() async {
    preference.accessToken = "";
    dao.deleteAll();
  }
}
