import 'package:get_it/get_it.dart';
import 'package:grpc/grpc.dart';

import '../../repository/service/auth_service.dart';
import '../../repository/service/biz_api_service.dart';
import '../../repository/service/dress_api_service.dart';
import '../../repository/service/vendor_api_service.dart';
import '../auth/app_auth.pbgrpc.dart';
import '../biz/app_biz.pbgrpc.dart';
import '../interceptor/AuthorizationInterceptor.dart';
import '../noauth/app_auth_no_auth.pbgrpc.dart';


class ApiModule {

  void provide(GetIt getIt) {
    _provideClient(getIt);
    _provideApiService(getIt);
  }

  void _provideClient(GetIt getIt) {
    getIt.registerFactory<AppAuthServiceClient>(() => AppAuthServiceClient(getIt.get<ClientChannel>(), options: getIt.get(), interceptors: [AuthorizationInterceptor()]));
    getIt.registerFactory<AppAuthServiceWithoutTokenClient>(() => AppAuthServiceWithoutTokenClient(getIt.get<ClientChannel>(), options: getIt.get(), interceptors: [ApiInterceptor()]));
    getIt.registerFactory(() => AppBizServiceClient(getIt.get<ClientChannel>(), options: getIt.get(), interceptors: [AuthorizationInterceptor()]));
  }

  void _provideApiService(GetIt getIt) {
    getIt.registerSingleton(AuthService(getIt.get(), getIt.get()));
    getIt.registerSingleton(BizApiService(getIt.get()));
    getIt.registerSingleton(VendorApiService());
    getIt.registerSingleton(DressApiService());
  }
}