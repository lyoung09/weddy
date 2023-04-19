import 'package:flutter/material.dart';
import 'package:weddynew/apis/result.dart';

import '../apis/biz/app_biz.pb.dart';
import '../apis/common/app_common.pb.dart';
import '../common/dummy_data.dart';

import '../model/vendor_category.dart';
import '../service/vendor_api_service.dart';

class VendorRepository {
  const VendorRepository(this.api);

  final VendorApiService api;

  Future<VendorCategoryCustom> getVendorCategoryList() async {
    List<VendorCategoryItem> primaryProductItems = [];
    List<VendorCategoryItem> secondaryProductItems = [];

    List<VendorCategoryItem> items = DummyData.getCategoryData();
    for (int i = 0; i < items.length; i++) {
      VendorCategoryItem item = items[i];
      if (item.isOptional) {
        secondaryProductItems.add(item);
      } else {
        primaryProductItems.add(item);
      }
    }

    return VendorCategoryCustom(primaryProductItems, secondaryProductItems);
  }

  Future<Result<AppResultResponse>> getUserId() async {
    return api.isUserId().then((value) => value);
  }

  Future<Result<GetVendorCategoryResponse>> getVendorCategoryResponse() async {
    return api.getCategory().then((value) => value);
  }

  Future<Result<GetVendorListResponse>> getCategoryVendorList(int index) async {
    return api.getCategoryVendorList(index).then((value) => value);
  }

  Future<Result<SearchVendorProfile>> getWeddinghallVendorList() async {
    return api.getWeddinghallVendorListService().then((value) => value);
  }

  Future<Result<GetVendorListResponse>> getSearchResult(
      String searchText, int index, int? vendorCode) async {
    return api
        .getSearchResult(searchText, index, vendorCode)
        .then((value) => value);
  }

  Future<Result<BookmarkResponse>> getBookMarkResponse() async {
    return api.getBookMarkList();
  }

  Future<Result<GetUserScrapListResponse>> getUserScrapListResponse() async {
    return api.getUserScrapListResponseApi().then((value) => value);
  }

  Future<Result<AppResultResponse>> addScrap(
    int vendorProfileId,
    int vendorServiceCode,
    List<ScrapItem> scrapItemList,
  ) async {
    return api.addScrapApi(vendorProfileId, vendorServiceCode, scrapItemList);
  }

  Future<Result<AppResultResponse>> addWeddingHallScrap(
    int vendorProfileId,
    int vendorServiceCode,
    ScrapItem scrapItem,
  ) async {
    return api.addWeddingHallScrapApiService(
        vendorProfileId, vendorServiceCode, scrapItem);
  }

  Future<Result<AppResultResponse>> removeScrap(
      scrapId, scrapItemId, vendorProfileId) async {
    return api.removeScrapApi(scrapId, scrapItemId, vendorProfileId);
  }

  Future<Result<AppResultResponse>> addConsulting(
      String contactName,
      String contactTelNumber,
      String contactEmail,
      int contactCode,
      List<Consulting> consultingList) async {
    return api.addConsultingApi(contactName, contactTelNumber, contactEmail,
        contactCode, consultingList);
  }

  Future<Result<GetUserConsultingListResponse>>
      getUserConsultingInfoListRepository() async {
    return api.getUserConsultingInfoListApi();
  }

  Future<Result<AppResultResponse>> removeInquire(int id) async {
    return api.getRemoveInquireApi(id);
  }

  Future<ScrapVendorInfo> getScrapId(int id) async {
    return api.getScrapItemDetail(id);
  }

  Future<Result<GetPromotionVideoListResponse>> getVideo(int id) async {
    return api.getVideoService(id);
  }
}
