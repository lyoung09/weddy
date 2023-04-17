///
//  Generated code. Do not modify.
//  source: app_biz.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../common/app_common.pb.dart' as $0;
import 'app_biz.pb.dart' as $1;
export 'app_biz.pb.dart';

class AppBizServiceClient extends $grpc.Client {
  static final _$getTimelines =
      $grpc.ClientMethod<$0.CommonRequest, $1.TimelineResponse>(
          '/AppBizService/GetTimelines',
          ($0.CommonRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.TimelineResponse.fromBuffer(value));
  static final _$saveTimelines =
      $grpc.ClientMethod<$1.SaveTimelineRequest, $0.AppResultResponse>(
          '/AppBizService/SaveTimelines',
          ($1.SaveTimelineRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AppResultResponse.fromBuffer(value));
  static final _$modifyUserTimelines =
      $grpc.ClientMethod<$1.ModifyTimelineRequest, $1.ModifyTimelineResponse>(
          '/AppBizService/ModifyUserTimelines',
          ($1.ModifyTimelineRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ModifyTimelineResponse.fromBuffer(value));
  static final _$simulateUserBudget = $grpc.ClientMethod<
          $1.SimulateUserBudgetRequest, $1.SimulateUserBudgetResponse>(
      '/AppBizService/SimulateUserBudget',
      ($1.SimulateUserBudgetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.SimulateUserBudgetResponse.fromBuffer(value));
  static final _$addSimulateItemToChecklist =
      $grpc.ClientMethod<$1.AddSimulateItemRequest, $0.AppResultResponse>(
          '/AppBizService/AddSimulateItemToChecklist',
          ($1.AddSimulateItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AppResultResponse.fromBuffer(value));
  static final _$getChecklist =
      $grpc.ClientMethod<$0.CommonRequest, $1.CheckListResponse>(
          '/AppBizService/GetChecklist',
          ($0.CommonRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.CheckListResponse.fromBuffer(value));
  static final _$enableChecklistItem =
      $grpc.ClientMethod<$1.EnableChecklistItemRequest, $0.AppResultResponse>(
          '/AppBizService/EnableChecklistItem',
          ($1.EnableChecklistItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AppResultResponse.fromBuffer(value));
  static final _$changeChecklistVendor =
      $grpc.ClientMethod<$1.ChangeChecklistVendorRequest, $0.AppResultResponse>(
          '/AppBizService/ChangeChecklistVendor',
          ($1.ChangeChecklistVendorRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AppResultResponse.fromBuffer(value));
  static final _$shareChecklist =
      $grpc.ClientMethod<$1.ShareChecklistRequest, $0.AppResultResponse>(
          '/AppBizService/ShareChecklist',
          ($1.ShareChecklistRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AppResultResponse.fromBuffer(value));
  static final _$getVendorLikesList =
      $grpc.ClientMethod<$1.PaginationRequest, $1.BookmarkResponse>(
          '/AppBizService/GetVendorLikesList',
          ($1.PaginationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.BookmarkResponse.fromBuffer(value));
  static final _$addVendorLikes =
      $grpc.ClientMethod<$1.BookmarkRequest, $0.AppResultResponse>(
          '/AppBizService/AddVendorLikes',
          ($1.BookmarkRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AppResultResponse.fromBuffer(value));
  static final _$removeVendorLikes =
      $grpc.ClientMethod<$1.BookmarkRequest, $0.AppResultResponse>(
          '/AppBizService/RemoveVendorLikes',
          ($1.BookmarkRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AppResultResponse.fromBuffer(value));
  static final _$getUserProfile =
      $grpc.ClientMethod<$0.CommonRequest, $1.UserProfileResponse>(
          '/AppBizService/GetUserProfile',
          ($0.CommonRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.UserProfileResponse.fromBuffer(value));
  static final _$saveUserProfile =
      $grpc.ClientMethod<$1.SaveUserProfileRequest, $0.AppResultResponse>(
          '/AppBizService/SaveUserProfile',
          ($1.SaveUserProfileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AppResultResponse.fromBuffer(value));
  static final _$updateUserBudget =
      $grpc.ClientMethod<$1.Budget, $0.AppResultResponse>(
          '/AppBizService/UpdateUserBudget',
          ($1.Budget value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AppResultResponse.fromBuffer(value));
  static final _$getMemoList =
      $grpc.ClientMethod<$1.PaginationRequest, $1.MemoResponse>(
          '/AppBizService/GetMemoList',
          ($1.PaginationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.MemoResponse.fromBuffer(value));
  static final _$addNewMemo =
      $grpc.ClientMethod<$1.MemoRequest, $0.AppResultResponse>(
          '/AppBizService/AddNewMemo',
          ($1.MemoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AppResultResponse.fromBuffer(value));
  static final _$saveMemo =
      $grpc.ClientMethod<$1.MemoRequest, $0.AppResultResponse>(
          '/AppBizService/SaveMemo',
          ($1.MemoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AppResultResponse.fromBuffer(value));
  static final _$deleteMemo =
      $grpc.ClientMethod<$1.MemoRequest, $0.AppResultResponse>(
          '/AppBizService/DeleteMemo',
          ($1.MemoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AppResultResponse.fromBuffer(value));
  static final _$getVendorServices =
      $grpc.ClientMethod<$1.PaginationRequest, $0.AppResultResponse>(
          '/AppBizService/GetVendorServices',
          ($1.PaginationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AppResultResponse.fromBuffer(value));
  static final _$getVendorServiceDetails = $grpc.ClientMethod<
          $1.VendorServiceDetailsRequest, $1.VendorServiceDetailsResponse>(
      '/AppBizService/GetVendorServiceDetails',
      ($1.VendorServiceDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.VendorServiceDetailsResponse.fromBuffer(value));
  static final _$getVendorYoutubeList =
      $grpc.ClientMethod<$1.ContentsRequest, $1.ContentsResponse>(
          '/AppBizService/GetVendorYoutubeList',
          ($1.ContentsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ContentsResponse.fromBuffer(value));
  static final _$getVendorImageList =
      $grpc.ClientMethod<$1.PaginationRequest, $1.ContentsResponse>(
          '/AppBizService/GetVendorImageList',
          ($1.PaginationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ContentsResponse.fromBuffer(value));
  static final _$getVendorDressImageList =
      $grpc.ClientMethod<$1.PaginationRequest, $1.ContentsResponse>(
          '/AppBizService/GetVendorDressImageList',
          ($1.PaginationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ContentsResponse.fromBuffer(value));
  static final _$getVendorDressImageInfo =
      $grpc.ClientMethod<$1.ContentsItem, $1.GetVendorDressImageInfoResponse>(
          '/AppBizService/GetVendorDressImageInfo',
          ($1.ContentsItem value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetVendorDressImageInfoResponse.fromBuffer(value));
  static final _$addVendorVisitReservation =
      $grpc.ClientMethod<$0.CommonRequest, $0.AppResultResponse>(
          '/AppBizService/AddVendorVisitReservation',
          ($0.CommonRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AppResultResponse.fromBuffer(value));
  static final _$cancelVendorVisitReservation =
      $grpc.ClientMethod<$0.CommonRequest, $0.AppResultResponse>(
          '/AppBizService/CancelVendorVisitReservation',
          ($0.CommonRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AppResultResponse.fromBuffer(value));
  static final _$getUserAccountId =
      $grpc.ClientMethod<$1.Empty, $0.AppResultResponse>(
          '/AppBizService/GetUserAccountId',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AppResultResponse.fromBuffer(value));
  static final _$getVendorCategory =
      $grpc.ClientMethod<$1.Empty, $1.GetVendorCategoryResponse>(
          '/AppBizService/GetVendorCategory',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetVendorCategoryResponse.fromBuffer(value));
  static final _$getVendorList =
      $grpc.ClientMethod<$1.GetVendorListRequest, $1.GetVendorListResponse>(
          '/AppBizService/GetVendorList',
          ($1.GetVendorListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetVendorListResponse.fromBuffer(value));
  static final _$getVendorInfo =
      $grpc.ClientMethod<$1.GetVendorInfoRequest, $1.GetVendorInfoResponse>(
          '/AppBizService/GetVendorInfo',
          ($1.GetVendorInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetVendorInfoResponse.fromBuffer(value));
  static final _$getPromotionVideoList =
      $grpc.ClientMethod<$1.VendorProfileId, $1.GetPromotionVideoListResponse>(
          '/AppBizService/GetPromotionVideoList',
          ($1.VendorProfileId value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetPromotionVideoListResponse.fromBuffer(value));
  static final _$getWeddinghallInfo = $grpc.ClientMethod<
          $1.GetVendorInfoRequest, $1.GetWeddinghallInfoResponse>(
      '/AppBizService/GetWeddinghallInfo',
      ($1.GetVendorInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.GetWeddinghallInfoResponse.fromBuffer(value));
  static final _$getWeddinghallHallList =
      $grpc.ClientMethod<$1.VendorProfileId, $1.GetWeddinghallHallResponse>(
          '/AppBizService/GetWeddinghallHallList',
          ($1.VendorProfileId value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetWeddinghallHallResponse.fromBuffer(value));
  static final _$getWeddinghallItemList =
      $grpc.ClientMethod<$1.VendorProfileId, $1.GetWeddinghallItemResponse>(
          '/AppBizService/GetWeddinghallItemList',
          ($1.VendorProfileId value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetWeddinghallItemResponse.fromBuffer(value));
  static final _$getVendorItemInfo =
      $grpc.ClientMethod<$1.GetVendorItemInfoRequest, $1.VendorItem>(
          '/AppBizService/GetVendorItemInfo',
          ($1.GetVendorItemInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.VendorItem.fromBuffer(value));
  static final _$addUserConsulting =
      $grpc.ClientMethod<$1.AddConsultingRequest, $0.AppResultResponse>(
          '/AppBizService/AddUserConsulting',
          ($1.AddConsultingRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AppResultResponse.fromBuffer(value));
  static final _$getExistConsultingUserList = $grpc.ClientMethod<
          $0.CommonRequest, $1.GetExistConsultingUserListResponse>(
      '/AppBizService/GetExistConsultingUserList',
      ($0.CommonRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.GetExistConsultingUserListResponse.fromBuffer(value));
  static final _$addUserScrap =
      $grpc.ClientMethod<$1.AddUserScrapRequest, $0.AppResultResponse>(
          '/AppBizService/AddUserScrap',
          ($1.AddUserScrapRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AppResultResponse.fromBuffer(value));
  static final _$removeUserScrapItem =
      $grpc.ClientMethod<$1.RemoveUserScrapItemRequest, $0.AppResultResponse>(
          '/AppBizService/RemoveUserScrapItem',
          ($1.RemoveUserScrapItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AppResultResponse.fromBuffer(value));
  static final _$getUserScrapList =
      $grpc.ClientMethod<$1.Empty, $1.GetUserScrapListResponse>(
          '/AppBizService/GetUserScrapList',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetUserScrapListResponse.fromBuffer(value));
  static final _$getUserScrapInfo =
      $grpc.ClientMethod<$1.VendorProfileId, $1.ScrapVendorInfo>(
          '/AppBizService/GetUserScrapInfo',
          ($1.VendorProfileId value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ScrapVendorInfo.fromBuffer(value));
  static final _$getUserConsultingInfoList =
      $grpc.ClientMethod<$1.Empty, $1.GetUserConsultingListResponse>(
          '/AppBizService/GetUserConsultingInfoList',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetUserConsultingListResponse.fromBuffer(value));
  static final _$cancelUserConsulting =
      $grpc.ClientMethod<$1.CancelConsultingRequest, $0.AppResultResponse>(
          '/AppBizService/CancelUserConsulting',
          ($1.CancelConsultingRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AppResultResponse.fromBuffer(value));
  static final _$getSimulateVendorItem = $grpc.ClientMethod<
          $1.SimulateUserBudgetRequest, $1.GetSimulateVendorItemResponse>(
      '/AppBizService/GetSimulateVendorItem',
      ($1.SimulateUserBudgetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.GetSimulateVendorItemResponse.fromBuffer(value));
  static final _$addUserVendorRecommand = $grpc.ClientMethod<
          $1.AddUserVendorRecommandRequest, $0.AppResultResponse>(
      '/AppBizService/AddUserVendorRecommand',
      ($1.AddUserVendorRecommandRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AppResultResponse.fromBuffer(value));

  AppBizServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.TimelineResponse> getTimelines(
      $0.CommonRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTimelines, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppResultResponse> saveTimelines(
      $1.SaveTimelineRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$saveTimelines, request, options: options);
  }

  $grpc.ResponseFuture<$1.ModifyTimelineResponse> modifyUserTimelines(
      $1.ModifyTimelineRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modifyUserTimelines, request, options: options);
  }

  $grpc.ResponseFuture<$1.SimulateUserBudgetResponse> simulateUserBudget(
      $1.SimulateUserBudgetRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$simulateUserBudget, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppResultResponse> addSimulateItemToChecklist(
      $1.AddSimulateItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSimulateItemToChecklist, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.CheckListResponse> getChecklist(
      $0.CommonRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getChecklist, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppResultResponse> enableChecklistItem(
      $1.EnableChecklistItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enableChecklistItem, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppResultResponse> changeChecklistVendor(
      $1.ChangeChecklistVendorRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeChecklistVendor, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppResultResponse> shareChecklist(
      $1.ShareChecklistRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$shareChecklist, request, options: options);
  }

  $grpc.ResponseFuture<$1.BookmarkResponse> getVendorLikesList(
      $1.PaginationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getVendorLikesList, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppResultResponse> addVendorLikes(
      $1.BookmarkRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addVendorLikes, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppResultResponse> removeVendorLikes(
      $1.BookmarkRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeVendorLikes, request, options: options);
  }

  $grpc.ResponseFuture<$1.UserProfileResponse> getUserProfile(
      $0.CommonRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserProfile, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppResultResponse> saveUserProfile(
      $1.SaveUserProfileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$saveUserProfile, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppResultResponse> updateUserBudget($1.Budget request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUserBudget, request, options: options);
  }

  $grpc.ResponseFuture<$1.MemoResponse> getMemoList(
      $1.PaginationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMemoList, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppResultResponse> addNewMemo($1.MemoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addNewMemo, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppResultResponse> saveMemo($1.MemoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$saveMemo, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppResultResponse> deleteMemo($1.MemoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteMemo, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppResultResponse> getVendorServices(
      $1.PaginationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getVendorServices, request, options: options);
  }

  $grpc.ResponseFuture<$1.VendorServiceDetailsResponse> getVendorServiceDetails(
      $1.VendorServiceDetailsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getVendorServiceDetails, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.ContentsResponse> getVendorYoutubeList(
      $1.ContentsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getVendorYoutubeList, request, options: options);
  }

  $grpc.ResponseFuture<$1.ContentsResponse> getVendorImageList(
      $1.PaginationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getVendorImageList, request, options: options);
  }

  $grpc.ResponseFuture<$1.ContentsResponse> getVendorDressImageList(
      $1.PaginationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getVendorDressImageList, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.GetVendorDressImageInfoResponse>
      getVendorDressImageInfo($1.ContentsItem request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getVendorDressImageInfo, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.AppResultResponse> addVendorVisitReservation(
      $0.CommonRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addVendorVisitReservation, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.AppResultResponse> cancelVendorVisitReservation(
      $0.CommonRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelVendorVisitReservation, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.AppResultResponse> getUserAccountId($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserAccountId, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetVendorCategoryResponse> getVendorCategory(
      $1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getVendorCategory, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetVendorListResponse> getVendorList(
      $1.GetVendorListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getVendorList, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetVendorInfoResponse> getVendorInfo(
      $1.GetVendorInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getVendorInfo, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetPromotionVideoListResponse> getPromotionVideoList(
      $1.VendorProfileId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPromotionVideoList, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetWeddinghallInfoResponse> getWeddinghallInfo(
      $1.GetVendorInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWeddinghallInfo, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetWeddinghallHallResponse> getWeddinghallHallList(
      $1.VendorProfileId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWeddinghallHallList, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.GetWeddinghallItemResponse> getWeddinghallItemList(
      $1.VendorProfileId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWeddinghallItemList, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.VendorItem> getVendorItemInfo(
      $1.GetVendorItemInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getVendorItemInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppResultResponse> addUserConsulting(
      $1.AddConsultingRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addUserConsulting, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetExistConsultingUserListResponse>
      getExistConsultingUserList($0.CommonRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getExistConsultingUserList, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.AppResultResponse> addUserScrap(
      $1.AddUserScrapRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addUserScrap, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppResultResponse> removeUserScrapItem(
      $1.RemoveUserScrapItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeUserScrapItem, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetUserScrapListResponse> getUserScrapList(
      $1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserScrapList, request, options: options);
  }

  $grpc.ResponseFuture<$1.ScrapVendorInfo> getUserScrapInfo(
      $1.VendorProfileId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserScrapInfo, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetUserConsultingListResponse>
      getUserConsultingInfoList($1.Empty request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserConsultingInfoList, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.AppResultResponse> cancelUserConsulting(
      $1.CancelConsultingRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelUserConsulting, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetSimulateVendorItemResponse> getSimulateVendorItem(
      $1.SimulateUserBudgetRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSimulateVendorItem, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppResultResponse> addUserVendorRecommand(
      $1.AddUserVendorRecommandRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addUserVendorRecommand, request,
        options: options);
  }
}

abstract class AppBizServiceBase extends $grpc.Service {
  $core.String get $name => 'AppBizService';

  AppBizServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CommonRequest, $1.TimelineResponse>(
        'GetTimelines',
        getTimelines_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CommonRequest.fromBuffer(value),
        ($1.TimelineResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.SaveTimelineRequest, $0.AppResultResponse>(
            'SaveTimelines',
            saveTimelines_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.SaveTimelineRequest.fromBuffer(value),
            ($0.AppResultResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ModifyTimelineRequest,
            $1.ModifyTimelineResponse>(
        'ModifyUserTimelines',
        modifyUserTimelines_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.ModifyTimelineRequest.fromBuffer(value),
        ($1.ModifyTimelineResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SimulateUserBudgetRequest,
            $1.SimulateUserBudgetResponse>(
        'SimulateUserBudget',
        simulateUserBudget_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.SimulateUserBudgetRequest.fromBuffer(value),
        ($1.SimulateUserBudgetResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.AddSimulateItemRequest, $0.AppResultResponse>(
            'AddSimulateItemToChecklist',
            addSimulateItemToChecklist_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.AddSimulateItemRequest.fromBuffer(value),
            ($0.AppResultResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CommonRequest, $1.CheckListResponse>(
        'GetChecklist',
        getChecklist_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CommonRequest.fromBuffer(value),
        ($1.CheckListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.EnableChecklistItemRequest,
            $0.AppResultResponse>(
        'EnableChecklistItem',
        enableChecklistItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.EnableChecklistItemRequest.fromBuffer(value),
        ($0.AppResultResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ChangeChecklistVendorRequest,
            $0.AppResultResponse>(
        'ChangeChecklistVendor',
        changeChecklistVendor_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.ChangeChecklistVendorRequest.fromBuffer(value),
        ($0.AppResultResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.ShareChecklistRequest, $0.AppResultResponse>(
            'ShareChecklist',
            shareChecklist_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.ShareChecklistRequest.fromBuffer(value),
            ($0.AppResultResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PaginationRequest, $1.BookmarkResponse>(
        'GetVendorLikesList',
        getVendorLikesList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PaginationRequest.fromBuffer(value),
        ($1.BookmarkResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.BookmarkRequest, $0.AppResultResponse>(
        'AddVendorLikes',
        addVendorLikes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.BookmarkRequest.fromBuffer(value),
        ($0.AppResultResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.BookmarkRequest, $0.AppResultResponse>(
        'RemoveVendorLikes',
        removeVendorLikes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.BookmarkRequest.fromBuffer(value),
        ($0.AppResultResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CommonRequest, $1.UserProfileResponse>(
        'GetUserProfile',
        getUserProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CommonRequest.fromBuffer(value),
        ($1.UserProfileResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.SaveUserProfileRequest, $0.AppResultResponse>(
            'SaveUserProfile',
            saveUserProfile_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.SaveUserProfileRequest.fromBuffer(value),
            ($0.AppResultResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Budget, $0.AppResultResponse>(
        'UpdateUserBudget',
        updateUserBudget_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Budget.fromBuffer(value),
        ($0.AppResultResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PaginationRequest, $1.MemoResponse>(
        'GetMemoList',
        getMemoList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PaginationRequest.fromBuffer(value),
        ($1.MemoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.MemoRequest, $0.AppResultResponse>(
        'AddNewMemo',
        addNewMemo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.MemoRequest.fromBuffer(value),
        ($0.AppResultResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.MemoRequest, $0.AppResultResponse>(
        'SaveMemo',
        saveMemo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.MemoRequest.fromBuffer(value),
        ($0.AppResultResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.MemoRequest, $0.AppResultResponse>(
        'DeleteMemo',
        deleteMemo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.MemoRequest.fromBuffer(value),
        ($0.AppResultResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PaginationRequest, $0.AppResultResponse>(
        'GetVendorServices',
        getVendorServices_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PaginationRequest.fromBuffer(value),
        ($0.AppResultResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.VendorServiceDetailsRequest,
            $1.VendorServiceDetailsResponse>(
        'GetVendorServiceDetails',
        getVendorServiceDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.VendorServiceDetailsRequest.fromBuffer(value),
        ($1.VendorServiceDetailsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ContentsRequest, $1.ContentsResponse>(
        'GetVendorYoutubeList',
        getVendorYoutubeList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ContentsRequest.fromBuffer(value),
        ($1.ContentsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PaginationRequest, $1.ContentsResponse>(
        'GetVendorImageList',
        getVendorImageList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PaginationRequest.fromBuffer(value),
        ($1.ContentsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PaginationRequest, $1.ContentsResponse>(
        'GetVendorDressImageList',
        getVendorDressImageList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PaginationRequest.fromBuffer(value),
        ($1.ContentsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ContentsItem,
            $1.GetVendorDressImageInfoResponse>(
        'GetVendorDressImageInfo',
        getVendorDressImageInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ContentsItem.fromBuffer(value),
        ($1.GetVendorDressImageInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CommonRequest, $0.AppResultResponse>(
        'AddVendorVisitReservation',
        addVendorVisitReservation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CommonRequest.fromBuffer(value),
        ($0.AppResultResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CommonRequest, $0.AppResultResponse>(
        'CancelVendorVisitReservation',
        cancelVendorVisitReservation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CommonRequest.fromBuffer(value),
        ($0.AppResultResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.AppResultResponse>(
        'GetUserAccountId',
        getUserAccountId_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.AppResultResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $1.GetVendorCategoryResponse>(
        'GetVendorCategory',
        getVendorCategory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($1.GetVendorCategoryResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.GetVendorListRequest, $1.GetVendorListResponse>(
            'GetVendorList',
            getVendorList_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.GetVendorListRequest.fromBuffer(value),
            ($1.GetVendorListResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.GetVendorInfoRequest, $1.GetVendorInfoResponse>(
            'GetVendorInfo',
            getVendorInfo_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.GetVendorInfoRequest.fromBuffer(value),
            ($1.GetVendorInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.VendorProfileId,
            $1.GetPromotionVideoListResponse>(
        'GetPromotionVideoList',
        getPromotionVideoList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.VendorProfileId.fromBuffer(value),
        ($1.GetPromotionVideoListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetVendorInfoRequest,
            $1.GetWeddinghallInfoResponse>(
        'GetWeddinghallInfo',
        getWeddinghallInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.GetVendorInfoRequest.fromBuffer(value),
        ($1.GetWeddinghallInfoResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.VendorProfileId, $1.GetWeddinghallHallResponse>(
            'GetWeddinghallHallList',
            getWeddinghallHallList_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.VendorProfileId.fromBuffer(value),
            ($1.GetWeddinghallHallResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.VendorProfileId, $1.GetWeddinghallItemResponse>(
            'GetWeddinghallItemList',
            getWeddinghallItemList_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.VendorProfileId.fromBuffer(value),
            ($1.GetWeddinghallItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetVendorItemInfoRequest, $1.VendorItem>(
        'GetVendorItemInfo',
        getVendorItemInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.GetVendorItemInfoRequest.fromBuffer(value),
        ($1.VendorItem value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.AddConsultingRequest, $0.AppResultResponse>(
            'AddUserConsulting',
            addUserConsulting_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.AddConsultingRequest.fromBuffer(value),
            ($0.AppResultResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CommonRequest,
            $1.GetExistConsultingUserListResponse>(
        'GetExistConsultingUserList',
        getExistConsultingUserList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CommonRequest.fromBuffer(value),
        ($1.GetExistConsultingUserListResponse value) =>
            value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.AddUserScrapRequest, $0.AppResultResponse>(
            'AddUserScrap',
            addUserScrap_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.AddUserScrapRequest.fromBuffer(value),
            ($0.AppResultResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RemoveUserScrapItemRequest,
            $0.AppResultResponse>(
        'RemoveUserScrapItem',
        removeUserScrapItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.RemoveUserScrapItemRequest.fromBuffer(value),
        ($0.AppResultResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $1.GetUserScrapListResponse>(
        'GetUserScrapList',
        getUserScrapList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($1.GetUserScrapListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.VendorProfileId, $1.ScrapVendorInfo>(
        'GetUserScrapInfo',
        getUserScrapInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.VendorProfileId.fromBuffer(value),
        ($1.ScrapVendorInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $1.GetUserConsultingListResponse>(
        'GetUserConsultingInfoList',
        getUserConsultingInfoList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($1.GetUserConsultingListResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.CancelConsultingRequest, $0.AppResultResponse>(
            'CancelUserConsulting',
            cancelUserConsulting_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.CancelConsultingRequest.fromBuffer(value),
            ($0.AppResultResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SimulateUserBudgetRequest,
            $1.GetSimulateVendorItemResponse>(
        'GetSimulateVendorItem',
        getSimulateVendorItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.SimulateUserBudgetRequest.fromBuffer(value),
        ($1.GetSimulateVendorItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AddUserVendorRecommandRequest,
            $0.AppResultResponse>(
        'AddUserVendorRecommand',
        addUserVendorRecommand_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.AddUserVendorRecommandRequest.fromBuffer(value),
        ($0.AppResultResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.TimelineResponse> getTimelines_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CommonRequest> request) async {
    return getTimelines(call, await request);
  }

  $async.Future<$0.AppResultResponse> saveTimelines_Pre($grpc.ServiceCall call,
      $async.Future<$1.SaveTimelineRequest> request) async {
    return saveTimelines(call, await request);
  }

  $async.Future<$1.ModifyTimelineResponse> modifyUserTimelines_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.ModifyTimelineRequest> request) async {
    return modifyUserTimelines(call, await request);
  }

  $async.Future<$1.SimulateUserBudgetResponse> simulateUserBudget_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.SimulateUserBudgetRequest> request) async {
    return simulateUserBudget(call, await request);
  }

  $async.Future<$0.AppResultResponse> addSimulateItemToChecklist_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.AddSimulateItemRequest> request) async {
    return addSimulateItemToChecklist(call, await request);
  }

  $async.Future<$1.CheckListResponse> getChecklist_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CommonRequest> request) async {
    return getChecklist(call, await request);
  }

  $async.Future<$0.AppResultResponse> enableChecklistItem_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.EnableChecklistItemRequest> request) async {
    return enableChecklistItem(call, await request);
  }

  $async.Future<$0.AppResultResponse> changeChecklistVendor_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.ChangeChecklistVendorRequest> request) async {
    return changeChecklistVendor(call, await request);
  }

  $async.Future<$0.AppResultResponse> shareChecklist_Pre($grpc.ServiceCall call,
      $async.Future<$1.ShareChecklistRequest> request) async {
    return shareChecklist(call, await request);
  }

  $async.Future<$1.BookmarkResponse> getVendorLikesList_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.PaginationRequest> request) async {
    return getVendorLikesList(call, await request);
  }

  $async.Future<$0.AppResultResponse> addVendorLikes_Pre(
      $grpc.ServiceCall call, $async.Future<$1.BookmarkRequest> request) async {
    return addVendorLikes(call, await request);
  }

  $async.Future<$0.AppResultResponse> removeVendorLikes_Pre(
      $grpc.ServiceCall call, $async.Future<$1.BookmarkRequest> request) async {
    return removeVendorLikes(call, await request);
  }

  $async.Future<$1.UserProfileResponse> getUserProfile_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CommonRequest> request) async {
    return getUserProfile(call, await request);
  }

  $async.Future<$0.AppResultResponse> saveUserProfile_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.SaveUserProfileRequest> request) async {
    return saveUserProfile(call, await request);
  }

  $async.Future<$0.AppResultResponse> updateUserBudget_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Budget> request) async {
    return updateUserBudget(call, await request);
  }

  $async.Future<$1.MemoResponse> getMemoList_Pre($grpc.ServiceCall call,
      $async.Future<$1.PaginationRequest> request) async {
    return getMemoList(call, await request);
  }

  $async.Future<$0.AppResultResponse> addNewMemo_Pre(
      $grpc.ServiceCall call, $async.Future<$1.MemoRequest> request) async {
    return addNewMemo(call, await request);
  }

  $async.Future<$0.AppResultResponse> saveMemo_Pre(
      $grpc.ServiceCall call, $async.Future<$1.MemoRequest> request) async {
    return saveMemo(call, await request);
  }

  $async.Future<$0.AppResultResponse> deleteMemo_Pre(
      $grpc.ServiceCall call, $async.Future<$1.MemoRequest> request) async {
    return deleteMemo(call, await request);
  }

  $async.Future<$0.AppResultResponse> getVendorServices_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.PaginationRequest> request) async {
    return getVendorServices(call, await request);
  }

  $async.Future<$1.VendorServiceDetailsResponse> getVendorServiceDetails_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.VendorServiceDetailsRequest> request) async {
    return getVendorServiceDetails(call, await request);
  }

  $async.Future<$1.ContentsResponse> getVendorYoutubeList_Pre(
      $grpc.ServiceCall call, $async.Future<$1.ContentsRequest> request) async {
    return getVendorYoutubeList(call, await request);
  }

  $async.Future<$1.ContentsResponse> getVendorImageList_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.PaginationRequest> request) async {
    return getVendorImageList(call, await request);
  }

  $async.Future<$1.ContentsResponse> getVendorDressImageList_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.PaginationRequest> request) async {
    return getVendorDressImageList(call, await request);
  }

  $async.Future<$1.GetVendorDressImageInfoResponse> getVendorDressImageInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$1.ContentsItem> request) async {
    return getVendorDressImageInfo(call, await request);
  }

  $async.Future<$0.AppResultResponse> addVendorVisitReservation_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CommonRequest> request) async {
    return addVendorVisitReservation(call, await request);
  }

  $async.Future<$0.AppResultResponse> cancelVendorVisitReservation_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CommonRequest> request) async {
    return cancelVendorVisitReservation(call, await request);
  }

  $async.Future<$0.AppResultResponse> getUserAccountId_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getUserAccountId(call, await request);
  }

  $async.Future<$1.GetVendorCategoryResponse> getVendorCategory_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getVendorCategory(call, await request);
  }

  $async.Future<$1.GetVendorListResponse> getVendorList_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.GetVendorListRequest> request) async {
    return getVendorList(call, await request);
  }

  $async.Future<$1.GetVendorInfoResponse> getVendorInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.GetVendorInfoRequest> request) async {
    return getVendorInfo(call, await request);
  }

  $async.Future<$1.GetPromotionVideoListResponse> getPromotionVideoList_Pre(
      $grpc.ServiceCall call, $async.Future<$1.VendorProfileId> request) async {
    return getPromotionVideoList(call, await request);
  }

  $async.Future<$1.GetWeddinghallInfoResponse> getWeddinghallInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.GetVendorInfoRequest> request) async {
    return getWeddinghallInfo(call, await request);
  }

  $async.Future<$1.GetWeddinghallHallResponse> getWeddinghallHallList_Pre(
      $grpc.ServiceCall call, $async.Future<$1.VendorProfileId> request) async {
    return getWeddinghallHallList(call, await request);
  }

  $async.Future<$1.GetWeddinghallItemResponse> getWeddinghallItemList_Pre(
      $grpc.ServiceCall call, $async.Future<$1.VendorProfileId> request) async {
    return getWeddinghallItemList(call, await request);
  }

  $async.Future<$1.VendorItem> getVendorItemInfo_Pre($grpc.ServiceCall call,
      $async.Future<$1.GetVendorItemInfoRequest> request) async {
    return getVendorItemInfo(call, await request);
  }

  $async.Future<$0.AppResultResponse> addUserConsulting_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.AddConsultingRequest> request) async {
    return addUserConsulting(call, await request);
  }

  $async.Future<$1.GetExistConsultingUserListResponse>
      getExistConsultingUserList_Pre($grpc.ServiceCall call,
          $async.Future<$0.CommonRequest> request) async {
    return getExistConsultingUserList(call, await request);
  }

  $async.Future<$0.AppResultResponse> addUserScrap_Pre($grpc.ServiceCall call,
      $async.Future<$1.AddUserScrapRequest> request) async {
    return addUserScrap(call, await request);
  }

  $async.Future<$0.AppResultResponse> removeUserScrapItem_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.RemoveUserScrapItemRequest> request) async {
    return removeUserScrapItem(call, await request);
  }

  $async.Future<$1.GetUserScrapListResponse> getUserScrapList_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getUserScrapList(call, await request);
  }

  $async.Future<$1.ScrapVendorInfo> getUserScrapInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$1.VendorProfileId> request) async {
    return getUserScrapInfo(call, await request);
  }

  $async.Future<$1.GetUserConsultingListResponse> getUserConsultingInfoList_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getUserConsultingInfoList(call, await request);
  }

  $async.Future<$0.AppResultResponse> cancelUserConsulting_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.CancelConsultingRequest> request) async {
    return cancelUserConsulting(call, await request);
  }

  $async.Future<$1.GetSimulateVendorItemResponse> getSimulateVendorItem_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.SimulateUserBudgetRequest> request) async {
    return getSimulateVendorItem(call, await request);
  }

  $async.Future<$0.AppResultResponse> addUserVendorRecommand_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.AddUserVendorRecommandRequest> request) async {
    return addUserVendorRecommand(call, await request);
  }

  $async.Future<$1.TimelineResponse> getTimelines(
      $grpc.ServiceCall call, $0.CommonRequest request);
  $async.Future<$0.AppResultResponse> saveTimelines(
      $grpc.ServiceCall call, $1.SaveTimelineRequest request);
  $async.Future<$1.ModifyTimelineResponse> modifyUserTimelines(
      $grpc.ServiceCall call, $1.ModifyTimelineRequest request);
  $async.Future<$1.SimulateUserBudgetResponse> simulateUserBudget(
      $grpc.ServiceCall call, $1.SimulateUserBudgetRequest request);
  $async.Future<$0.AppResultResponse> addSimulateItemToChecklist(
      $grpc.ServiceCall call, $1.AddSimulateItemRequest request);
  $async.Future<$1.CheckListResponse> getChecklist(
      $grpc.ServiceCall call, $0.CommonRequest request);
  $async.Future<$0.AppResultResponse> enableChecklistItem(
      $grpc.ServiceCall call, $1.EnableChecklistItemRequest request);
  $async.Future<$0.AppResultResponse> changeChecklistVendor(
      $grpc.ServiceCall call, $1.ChangeChecklistVendorRequest request);
  $async.Future<$0.AppResultResponse> shareChecklist(
      $grpc.ServiceCall call, $1.ShareChecklistRequest request);
  $async.Future<$1.BookmarkResponse> getVendorLikesList(
      $grpc.ServiceCall call, $1.PaginationRequest request);
  $async.Future<$0.AppResultResponse> addVendorLikes(
      $grpc.ServiceCall call, $1.BookmarkRequest request);
  $async.Future<$0.AppResultResponse> removeVendorLikes(
      $grpc.ServiceCall call, $1.BookmarkRequest request);
  $async.Future<$1.UserProfileResponse> getUserProfile(
      $grpc.ServiceCall call, $0.CommonRequest request);
  $async.Future<$0.AppResultResponse> saveUserProfile(
      $grpc.ServiceCall call, $1.SaveUserProfileRequest request);
  $async.Future<$0.AppResultResponse> updateUserBudget(
      $grpc.ServiceCall call, $1.Budget request);
  $async.Future<$1.MemoResponse> getMemoList(
      $grpc.ServiceCall call, $1.PaginationRequest request);
  $async.Future<$0.AppResultResponse> addNewMemo(
      $grpc.ServiceCall call, $1.MemoRequest request);
  $async.Future<$0.AppResultResponse> saveMemo(
      $grpc.ServiceCall call, $1.MemoRequest request);
  $async.Future<$0.AppResultResponse> deleteMemo(
      $grpc.ServiceCall call, $1.MemoRequest request);
  $async.Future<$0.AppResultResponse> getVendorServices(
      $grpc.ServiceCall call, $1.PaginationRequest request);
  $async.Future<$1.VendorServiceDetailsResponse> getVendorServiceDetails(
      $grpc.ServiceCall call, $1.VendorServiceDetailsRequest request);
  $async.Future<$1.ContentsResponse> getVendorYoutubeList(
      $grpc.ServiceCall call, $1.ContentsRequest request);
  $async.Future<$1.ContentsResponse> getVendorImageList(
      $grpc.ServiceCall call, $1.PaginationRequest request);
  $async.Future<$1.ContentsResponse> getVendorDressImageList(
      $grpc.ServiceCall call, $1.PaginationRequest request);
  $async.Future<$1.GetVendorDressImageInfoResponse> getVendorDressImageInfo(
      $grpc.ServiceCall call, $1.ContentsItem request);
  $async.Future<$0.AppResultResponse> addVendorVisitReservation(
      $grpc.ServiceCall call, $0.CommonRequest request);
  $async.Future<$0.AppResultResponse> cancelVendorVisitReservation(
      $grpc.ServiceCall call, $0.CommonRequest request);
  $async.Future<$0.AppResultResponse> getUserAccountId(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$1.GetVendorCategoryResponse> getVendorCategory(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$1.GetVendorListResponse> getVendorList(
      $grpc.ServiceCall call, $1.GetVendorListRequest request);
  $async.Future<$1.GetVendorInfoResponse> getVendorInfo(
      $grpc.ServiceCall call, $1.GetVendorInfoRequest request);
  $async.Future<$1.GetPromotionVideoListResponse> getPromotionVideoList(
      $grpc.ServiceCall call, $1.VendorProfileId request);
  $async.Future<$1.GetWeddinghallInfoResponse> getWeddinghallInfo(
      $grpc.ServiceCall call, $1.GetVendorInfoRequest request);
  $async.Future<$1.GetWeddinghallHallResponse> getWeddinghallHallList(
      $grpc.ServiceCall call, $1.VendorProfileId request);
  $async.Future<$1.GetWeddinghallItemResponse> getWeddinghallItemList(
      $grpc.ServiceCall call, $1.VendorProfileId request);
  $async.Future<$1.VendorItem> getVendorItemInfo(
      $grpc.ServiceCall call, $1.GetVendorItemInfoRequest request);
  $async.Future<$0.AppResultResponse> addUserConsulting(
      $grpc.ServiceCall call, $1.AddConsultingRequest request);
  $async.Future<$1.GetExistConsultingUserListResponse>
      getExistConsultingUserList(
          $grpc.ServiceCall call, $0.CommonRequest request);
  $async.Future<$0.AppResultResponse> addUserScrap(
      $grpc.ServiceCall call, $1.AddUserScrapRequest request);
  $async.Future<$0.AppResultResponse> removeUserScrapItem(
      $grpc.ServiceCall call, $1.RemoveUserScrapItemRequest request);
  $async.Future<$1.GetUserScrapListResponse> getUserScrapList(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$1.ScrapVendorInfo> getUserScrapInfo(
      $grpc.ServiceCall call, $1.VendorProfileId request);
  $async.Future<$1.GetUserConsultingListResponse> getUserConsultingInfoList(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$0.AppResultResponse> cancelUserConsulting(
      $grpc.ServiceCall call, $1.CancelConsultingRequest request);
  $async.Future<$1.GetSimulateVendorItemResponse> getSimulateVendorItem(
      $grpc.ServiceCall call, $1.SimulateUserBudgetRequest request);
  $async.Future<$0.AppResultResponse> addUserVendorRecommand(
      $grpc.ServiceCall call, $1.AddUserVendorRecommandRequest request);
}
