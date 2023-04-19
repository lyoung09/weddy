import 'package:fixnum/fixnum.dart';
import 'package:weddynew/repository/safe_api.dart';
import '../apis/biz/app_biz.pbgrpc.dart';
import '../apis/common/app_common.pb.dart';
import '../apis/result.dart';

class VendorApiService {
  const VendorApiService(this.client);
  final AppBizServiceClient client;

  Future<Result<GetVendorCategoryResponse>> getCategory() async {
    return safeApiCall(client.getVendorCategory(Empty()))
        .map((GetVendorCategoryResponse result) => result);
  }

  Future<Result<GetVendorListResponse>> getCategoryVendorList(int index) async {
    return safeApiCall(client.getVendorList(GetVendorListRequest(
            vendorServiceCode: Int64(index), searchFilter: Int64(3))))
        .map((GetVendorListResponse result) => result);
  }

  Future<Result<SearchVendorProfile>> getWeddinghallVendorListService() async {
    return safeApiCall(client
            .getWeddinghallInfo(GetVendorInfoRequest(searchFilter: Int64(3))))
        .map((GetWeddinghallInfoResponse result) => result.searchVendorProfile);
  }

  Future<Result<GetVendorListResponse>> getSearchResult(
      String searchText, int index, int? vendorCode) async {
    return safeApiCall(client.getVendorList(GetVendorListRequest(
            searchKeyword: searchText,
            searchFilter: Int64(index),
            vendorServiceCode: Int64(vendorCode ?? 0))))
        .map((GetVendorListResponse result) => result);
  }

  Future<Result<SearchVendorProfile>> getSearchWeddinghallResult(
      String searchText, int index) async {
    return safeApiCall(client.getWeddinghallInfo(GetVendorInfoRequest(
      searchKeyword: searchText,
      searchFilter: Int64(index),
    ))).map((GetWeddinghallInfoResponse result) => result.searchVendorProfile);
  }

  Future<Result<BookmarkResponse>> getBookMarkList() async {
    return safeApiCall(client.getVendorLikesList(PaginationRequest()))
        .map((result) => result);
  }

  Future<Result<GetUserScrapListResponse>> getUserScrapListResponseApi() async {
    return safeApiCall(client.getUserScrapList(Empty()))
        .map((result) => result);
  }

  Future<ScrapVendorInfo> getScrapItemDetail(int id) async {
    return client.getUserScrapInfo(VendorProfileId(vendorProfileId: Int64(id)));
  }

  Future<Result<GetPromotionVideoListResponse>> getVideoService(int id) async {
    return safeApiCall(client
            .getPromotionVideoList(VendorProfileId(vendorProfileId: Int64(id))))
        .then((value) => value);
  }

  Future<Result<AppResultResponse>> addScrapApi(
    vendorProfileId,
    vendorServiceCode,
    List<ScrapItem> scrapItemList,
  ) async {
    return safeApiCall(client.addUserScrap(AddUserScrapRequest(
            vendorProfileId: Int64(vendorProfileId),
            vendorServiceCode: Int64(vendorServiceCode),
            scrapItemList: scrapItemList)))
        .map((result) => result);
  }

  Future<Result<AppResultResponse>> addWeddingHallScrapApiService(
    vendorProfileId,
    vendorServiceCode,
    ScrapItem scrapItem,
  ) async {
    List<ScrapItem> scrapList = [];
    scrapList.add(scrapItem);
    return safeApiCall(client.addUserScrap(AddUserScrapRequest(
            vendorProfileId: Int64(vendorProfileId),
            vendorServiceCode: Int64(vendorServiceCode),
            scrapItemList: scrapList)))
        .map((result) => result);
  }

  Future<Result<AppResultResponse>> removeScrapApi(
      scrapId, scrapItemId, vendorProfileId) async {
    return safeApiCall(client.removeUserScrapItem(RemoveUserScrapItemRequest(
            scrapId: Int64(scrapId),
            scrapItemId: Int64(scrapItemId),
            vendorProfileId: Int64(vendorProfileId))))
        .map((result) => result);
  }

  Future<Result<AppResultResponse>> isUserId() {
    return safeApiCall(client.getUserAccountId(Empty()))
        .map((result) => result);
  }

  Future<Result<AppResultResponse>> addConsultingApi(
    String contactName,
    String contactTelNumber,
    String contactEmail,
    int contactCode,
    List<Consulting> consultingList,
  ) {
    return safeApiCall(client.addUserConsulting(AddConsultingRequest(
            contactName: contactName,
            contactTelNumber: contactTelNumber,
            contactEmail: contactEmail,
            contactCode: contactCode,
            consultingList: consultingList)))
        .map((result) => result);
  }

  Future<Result<GetUserConsultingListResponse>> getUserConsultingInfoListApi() {
    return safeApiCall(client.getUserConsultingInfoList(Empty()))
        .map((result) => result);
  }

  Future<Result<AppResultResponse>> getRemoveInquireApi(int id) {
    return safeApiCall(client.cancelUserConsulting(
            CancelConsultingRequest(consultingId: Int64(id))))
        .then((value) => value);
  }

  Future<Result<GetSimulateVendorItemResponse>> simulationService(
      double pricerate) {
    return safeApiCall(client.getSimulateVendorItem(
            SimulateUserBudgetRequest(priceRate: pricerate)))
        .then((value) => value);
  }

  Future<Result<AppResultResponse>> userBudgetUpdateService(double pricerate) {
    return safeApiCall(
            client.updateUserBudget(Budget(budget: Int64(pricerate.toInt()))))
        .then((value) => value);
  }
}
//SimulateUserBudgetResponse