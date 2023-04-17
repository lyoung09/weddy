import 'dart:ffi';

import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weddynew/model/timeline_model.dart';

import 'package:weddynew/repository/safe_api.dart';

import '../apis/biz/app_biz.pb.dart';
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
    )));
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
            userEmail: result.email,
            phoneNumber: result.phoneNumber,
            userId: result.userId));
  }

  Future<Result<TimeLineResponse>> getTimelinGroup() async {
    return safeApiCall(client.getTimelines(CommonRequest()))
        .map((TimelineResponse result) {
      return TimeLineResponse(result.taskProgressRate,
          result.weddingRemaingDays, result.timelineGroupItemList);
    });
  }

  //Future<Result>
  Future<Result<ModifyTimelineResponse>> saveIsChecked(
      bool isChecked, TimelineItem item, int groupId) async {
    return safeApiCall(client.modifyUserTimelines(ModifyTimelineRequest(
            groupId: Int64(groupId),
            isChecked: isChecked,
            itemId: Int64(item.itemId))))
        .map((ModifyTimelineResponse result) {
      return result;
    });
  }

  Future<Result<ModifyTimelineResponse>> saveIsEnabled(
      bool isEnabled, TimelineItem item, int groupId) async {
    return safeApiCall(client.modifyUserTimelines(ModifyTimelineRequest(
            groupId: Int64(groupId),
            isNotEnabled: isEnabled,
            itemId: Int64(item.itemId))))
        .map((ModifyTimelineResponse result) {
      return result;
    });
  }

  Future<Result<ModifyTimelineResponse>> saveMemo(
      String memo, TimelineItem item, int groupId) async {
    return safeApiCall(client.modifyUserTimelines(ModifyTimelineRequest(
            groupId: Int64(groupId), memo: memo, itemId: Int64(item.itemId))))
        .map((ModifyTimelineResponse result) {
      return result;
    });
  }

  // Future<Result<TimelineItem>> getTimelineItem(int groupId,int id) async{

  // }

  Future<Result<AppResultResponse>> addUserVendorRecommandService(
      String vendorName,
      int vendorServiceCode,
      String vendorAddress,
      String reason) {
    return safeApiCall(client.addUserVendorRecommand(
            AddUserVendorRecommandRequest(
                vendorName: vendorName,
                vendorServiceCode: Int64(vendorServiceCode),
                vendorAddress: vendorAddress,
                reason: reason)))
        .map((value) => value);
  }
}
