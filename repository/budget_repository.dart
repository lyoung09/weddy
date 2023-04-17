import 'package:weddynew/service/budget_service.dart';

import '../apis/biz/app_biz.pb.dart';
import '../apis/common/app_common.pb.dart';
import '../apis/result.dart';

class BudgetRepository {
  BudgetRepository(this.service);
  final BudgetService service;

  Future<Result<SimulateUserBudgetResponse>> getBudget(double priceRate) {
    return service.getUserSimulator(priceRate).then((result) => result);
  }

  // Future<Result<AppResultResponse>> addBudget(List<VendorServiceItem> item) {
  //   return service.addUserSimulator(item);
  // }
}
