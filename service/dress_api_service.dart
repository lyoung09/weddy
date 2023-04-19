import 'package:weddynew/apis/result.dart';
import 'package:weddynew/repository/safe_api.dart';

import '../apis/biz/app_biz.pbgrpc.dart';

class DressApiService {
  DressApiService(this.client);

  final AppBizServiceClient client;

  Future<Result<ContentsResponse>> getDress() async {
    return safeApiCall(client.getVendorDressImageList(PaginationRequest()))
        .then((Result<ContentsResponse> result) => result);
  }

  Future<Result<GetVendorDressImageInfoResponse>> getDressImageDetailService(
      item) async {
    return safeApiCall(client
        .getVendorDressImageInfo(item)
        .then((GetVendorDressImageInfoResponse data) => data));
  }
}
