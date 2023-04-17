import 'package:fixnum/fixnum.dart';
import 'package:flutter/foundation.dart';

import '../apis/biz/app_biz.pbgrpc.dart';
import '../apis/common/app_common.pb.dart';
import '../apis/result.dart';
import '../repository/safe_api.dart';

class CategoryService {
  const CategoryService(this.client);
  final AppBizServiceClient client;

  Future<Result<GetVendorInfoResponse>> getVendorDetail(int index) async {
    return safeApiCall(client
            .getVendorInfo(GetVendorInfoRequest(vendorProfileId: Int64(index))))
        .map((GetVendorInfoResponse result) {
      return result;
    });
  }

  Future<Result<GetWeddinghallInfoResponse>>
      getWeddingHallProfileServiceService(int index) async {
    return safeApiCall(client.getWeddinghallInfo(
            GetVendorInfoRequest(vendorProfileId: Int64(index))))
        .map((GetWeddinghallInfoResponse result) {
      return result;
    });
  }

  Future<GetVendorInfoResponse> getVendorNotSafeDetail(int index) async {
    return client
        .getVendorInfo(GetVendorInfoRequest(vendorProfileId: Int64(index)))
        .then((value) => value);
  }

  Future<GetWeddinghallInfoResponse> getWeddinghallNotSafeInfo(
      int index) async {
    return client
        .getWeddinghallInfo(GetVendorInfoRequest(vendorProfileId: Int64(index)))
        .then((value) => value);
  }

  Future<Result<GetWeddinghallHallResponse>> getWeddingHallDetailInfoService(
      int index) async {
    return safeApiCall(client.getWeddinghallHallList(
            VendorProfileId(vendorProfileId: Int64(index))))
        .map((GetWeddinghallHallResponse result) {
      return result;
    });
  }

  Future<Result<GetWeddinghallItemResponse>> getWeddingHallDetailItemService(
      int index) async {
    return safeApiCall(client.getWeddinghallItemList(
            VendorProfileId(vendorProfileId: Int64(index))))
        .map((GetWeddinghallItemResponse result) {
      return result;
    });
  }

  Future<Result<AppResultResponse>> addVendorLike(profileId) async {
    return safeApiCall(client
            .addVendorLikes(BookmarkRequest(vendorProfileId: Int64(profileId))))
        .map((result) => result);
  }

  Future<Result<AppResultResponse>> removeVendorLike(profileId) async {
    return safeApiCall(client.removeVendorLikes(
            BookmarkRequest(vendorProfileId: Int64(profileId))))
        .map((result) => result);
  }

  Future<Result<BookmarkResponse>> getVendorLikeList() async {
    return safeApiCall(client
            .getVendorLikesList(PaginationRequest(offset: 0, rowCount: 50)))
        .map((result) => result);
  }
}
