import 'package:weddynew/apis/noauth/app_auth_no_auth.pb.dart';
import 'package:weddynew/repository/safe_api.dart';

import '../apis/biz/app_biz.pbgrpc.dart';
import '../apis/common/app_common.pb.dart';
import '../apis/result.dart';

class BudgetService {
  const BudgetService(this.client);
  final AppBizServiceClient client;

  Future<Result<SimulateUserBudgetResponse>> getUserSimulator(
      double priceRate) async {
    return safeApiCall(client.simulateUserBudget(
            SimulateUserBudgetRequest(priceRate: priceRate)))
        .then((result) => result);
  }

  Future<Result<AppResultResponse>> addUserSimulator(
      List<VendorServiceItem> item) async {
    return safeApiCall(client.addSimulateItemToChecklist(
            AddSimulateItemRequest(vendorServiceItemList: item)))
        .map((result) => result);
  }
}
