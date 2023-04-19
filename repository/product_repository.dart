import 'package:weddynew/apis/biz/app_biz.pb.dart';

import 'package:weddynew/service/category_service.dart';
import 'package:weddynew/service/vendor_api_service.dart';

import '../apis/common/app_common.pb.dart';
import '../apis/result.dart';

class ProductRepository {
  ProductRepository(this.api, this.apiService);

  final VendorApiService api;
  final CategoryService apiService;

  Future<Result<GetVendorInfoResponse>> vendorDetail(int index) async {
    return apiService.getVendorDetail(index);
  }

  Future<Result<GetWeddinghallInfoResponse>> getWeddingHallProfile(
      int index) async {
    return apiService.getWeddingHallProfileServiceService(index);
  }

  Future<Result<GetWeddinghallHallResponse>> getWeddingHallDetailInfo(
      int index) async {
    return apiService.getWeddingHallDetailInfoService(index);
  }

  Future<Result<GetWeddinghallItemResponse>> getWeddingHallDetailItem(
      int index) async {
    return apiService.getWeddingHallDetailItemService(index);
  }

  Future<Result<AppResultResponse>> addLike(int profileId) async {
    return apiService.addVendorLike(profileId);
  }

  Future<Result<BookmarkResponse>> getVendorLikeList() async {
    return apiService.getVendorLikeList();
  }

  Future<Result<AppResultResponse>> removeLike(int profileId) async {
    return apiService.removeVendorLike(profileId);
  }

  Future<Result<GetSimulateVendorItemResponse>> simulationRepository(
      double price) async {
    return api.simulationService(price);
  }

  Future<Result<AppResultResponse>> userBudgetUpdateRepository(
      double price) async {
    return api.userBudgetUpdateService(price);
  }
}
