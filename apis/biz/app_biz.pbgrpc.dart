///
//  Generated code. Do not modify.
//  source: grpc/app_biz.proto
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
  static final _$getBookmarkList =
      $grpc.ClientMethod<$1.PaginationRequest, $1.BookmarkResponse>(
          '/AppBizService/GetBookmarkList',
          ($1.PaginationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.BookmarkResponse.fromBuffer(value));
  static final _$addBookmark =
      $grpc.ClientMethod<$1.BookmarkRequest, $0.AppResultResponse>(
          '/AppBizService/AddBookmark',
          ($1.BookmarkRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AppResultResponse.fromBuffer(value));
  static final _$removeBookmark =
      $grpc.ClientMethod<$1.BookmarkRequest, $0.AppResultResponse>(
          '/AppBizService/RemoveBookmark',
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

  $grpc.ResponseFuture<$1.BookmarkResponse> getBookmarkList(
      $1.PaginationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBookmarkList, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppResultResponse> addBookmark(
      $1.BookmarkRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addBookmark, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppResultResponse> removeBookmark(
      $1.BookmarkRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeBookmark, request, options: options);
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
        'GetBookmarkList',
        getBookmarkList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PaginationRequest.fromBuffer(value),
        ($1.BookmarkResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.BookmarkRequest, $0.AppResultResponse>(
        'AddBookmark',
        addBookmark_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.BookmarkRequest.fromBuffer(value),
        ($0.AppResultResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.BookmarkRequest, $0.AppResultResponse>(
        'RemoveBookmark',
        removeBookmark_Pre,
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
  }

  $async.Future<$1.TimelineResponse> getTimelines_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CommonRequest> request) async {
    return getTimelines(call, await request);
  }

  $async.Future<$0.AppResultResponse> saveTimelines_Pre($grpc.ServiceCall call,
      $async.Future<$1.SaveTimelineRequest> request) async {
    return saveTimelines(call, await request);
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

  $async.Future<$1.BookmarkResponse> getBookmarkList_Pre($grpc.ServiceCall call,
      $async.Future<$1.PaginationRequest> request) async {
    return getBookmarkList(call, await request);
  }

  $async.Future<$0.AppResultResponse> addBookmark_Pre(
      $grpc.ServiceCall call, $async.Future<$1.BookmarkRequest> request) async {
    return addBookmark(call, await request);
  }

  $async.Future<$0.AppResultResponse> removeBookmark_Pre(
      $grpc.ServiceCall call, $async.Future<$1.BookmarkRequest> request) async {
    return removeBookmark(call, await request);
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

  $async.Future<$0.AppResultResponse> addVendorVisitReservation_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CommonRequest> request) async {
    return addVendorVisitReservation(call, await request);
  }

  $async.Future<$0.AppResultResponse> cancelVendorVisitReservation_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CommonRequest> request) async {
    return cancelVendorVisitReservation(call, await request);
  }

  $async.Future<$1.TimelineResponse> getTimelines(
      $grpc.ServiceCall call, $0.CommonRequest request);
  $async.Future<$0.AppResultResponse> saveTimelines(
      $grpc.ServiceCall call, $1.SaveTimelineRequest request);
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
  $async.Future<$1.BookmarkResponse> getBookmarkList(
      $grpc.ServiceCall call, $1.PaginationRequest request);
  $async.Future<$0.AppResultResponse> addBookmark(
      $grpc.ServiceCall call, $1.BookmarkRequest request);
  $async.Future<$0.AppResultResponse> removeBookmark(
      $grpc.ServiceCall call, $1.BookmarkRequest request);
  $async.Future<$1.UserProfileResponse> getUserProfile(
      $grpc.ServiceCall call, $0.CommonRequest request);
  $async.Future<$0.AppResultResponse> saveUserProfile(
      $grpc.ServiceCall call, $1.SaveUserProfileRequest request);
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
  $async.Future<$0.AppResultResponse> addVendorVisitReservation(
      $grpc.ServiceCall call, $0.CommonRequest request);
  $async.Future<$0.AppResultResponse> cancelVendorVisitReservation(
      $grpc.ServiceCall call, $0.CommonRequest request);
}
