import 'dart:ffi';

import 'package:fixnum/fixnum.dart';
import 'package:intl/intl.dart';

import 'package:weddynew/repository/safe_api.dart';

import '../apis/biz/app_biz.pbgrpc.dart';
import '../apis/common/app_common.pb.dart';
import '../apis/result.dart';
import '../model/user_profile.dart';

class BizApiService {
  const BizApiService(this.client);
  final AppBizServiceClient client;

  Future<Result<void>> updateUserProfile(UserProfile profile) {
    DateFormat format = DateFormat("yyyyMMdd");
    return safeApiCall(client.saveUserProfile(SaveUserProfileRequest(
            name: profile.name,
            ceremonyDate: profile.ceremonyDate != null
                ? format.format(profile.ceremonyDate!)
                : "",
            relationShipCode: profile.relationShipCode,
            weddingAdminDivisionCode: profile.divisionCode ?? 0,
            weddingBudget: Int64.parseInt(profile.weddingBudget.toString()),
            numberOfGuest: profile.numberOfGuest,
            hasPush: profile.hasPush,
            hasMarketingPush: profile.hasMarketingPush,
            birthDay: format.format(DateTime.now()),
            weddingStyleCode: 1000)))
        .map((result) => Void);
  }

  Future<Result<UserProfile>> getUserProfile() {
    return safeApiCall(client.getUserProfile(CommonRequest())).map((result) =>
        UserProfile(
            name: result.name,
            ceremonyDate: result.ceremonyDate.isNotEmpty
                ? DateTime.parse(result.ceremonyDate)
                : null,
            relationShipCode: result.relationShipCode,
            divisionCode: result.weddingAdminDivisionCode,
            weddingBudget: result.weddingBudget.toInt(),
            numberOfGuest: result.numberOfGuest,
            hasPush: result.hasPush,
            hasMarketingPush: result.hasMarketingPush));
  }
}
