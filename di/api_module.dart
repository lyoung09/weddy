import 'package:get_it/get_it.dart';
import 'package:grpc/grpc.dart';
import 'package:weddynew/service/budget_service.dart';
import 'package:weddynew/service/category_service.dart';

import '../service/auth_service.dart';
import '../service/biz_api_service.dart';
import '../service/dress_api_service.dart';
import '../service/vendor_api_service.dart';
import '../apis/auth/app_auth.pbgrpc.dart';
import '../apis/biz/app_biz.pbgrpc.dart';
import 'interceptor/AuthorizationInterceptor.dart';
import '../apis/noauth/app_auth_no_auth.pbgrpc.dart';

class ApiModule {
  void provide(GetIt getIt) {
    _provideClient(getIt);
    _provideApiService(getIt);
  }

  void _provideClient(GetIt getIt) {
    getIt.registerFactory<AppAuthServiceClient>(() => AppAuthServiceClient(
        getIt.get<ClientChannel>(),
        options: getIt.get(),
        interceptors: [AuthorizationInterceptor()]));
    getIt.registerFactory<AppAuthServiceWithoutTokenClient>(() =>
        AppAuthServiceWithoutTokenClient(getIt.get<ClientChannel>(),
            options: getIt.get(), interceptors: [ApiInterceptor()]));
    getIt.registerFactory(() => AppBizServiceClient(getIt.get<ClientChannel>(),
        options: getIt.get(), interceptors: [AuthorizationInterceptor()]));
  }

  void _provideApiService(GetIt getIt) {
    getIt.registerSingleton(AuthService(getIt.get(), getIt.get()));
    getIt.registerSingleton(BizApiService(getIt.get()));
    getIt.registerSingleton(VendorApiService(getIt.get()));
    getIt.registerSingleton(DressApiService(getIt.get()));
    getIt.registerSingleton(BudgetService(getIt.get()));
    getIt.registerSingleton(CategoryService(getIt.get()));
    //getIt.registerSingleton(ScheduleService(getIt.get()));
    //getIt.registerSingleton(MemoApiService(getIt.get()));
  }
}
