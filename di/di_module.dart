import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:weddynew/apis/preferences.dart';
import 'package:weddynew/di/api_module.dart';
import 'package:weddynew/di/weddy_database.dart';

import '../dao/user_profile_dao.dart';
import '../repository/auth_repository.dart';
import '../screen/app/bloc/app_bloc.dart';
import '../screen/auth/bloc/auth_bloc.dart';
import '../screen/auth/bloc/auth_state.dart';
import '../screen/auth/signup/bloc/signup_bloc.dart';
import 'network_module.dart';

final getIt = GetIt.instance;

Future<void> initGetIt() async {
  getIt.registerSingleton<PreferencesCustom>(
      PreferencesCustom(await SharedPreferences.getInstance()));

  await _provideDatabase(getIt);
  NetworkModule().provide(getIt);
  ApiModule().provide(getIt);
  _provideRepository(getIt);
  _provideBloc(getIt);
  _provideFirebase(getIt);
}

Future<void> _provideDatabase(GetIt getIt) async {
  getIt.registerSingleton<Database>(await database);
  getIt.registerFactory(() => UserProfileDao());
}

void _provideFirebase(GetIt getIt) {
  getIt.registerSingleton<FirebaseAnalytics>(FirebaseAnalytics.instance);
  getIt.registerSingleton<FirebaseAnalyticsObserver>(
      FirebaseAnalyticsObserver(analytics: getIt.get()));
}

void _provideRepository(GetIt getIt) {
  getIt.registerFactory(() => AuthRepository(
      dao: getIt.get(),
      service: getIt.get(),
      bizService: getIt.get(),
      preference: getIt.get()));
  // getIt.registerFactory(() => ScheduleRepository());
  // getIt.registerFactory(() => VendorRepository(getIt.get()));
  // getIt.registerFactory(() => DressRepository(getIt.get()));
  // getIt.registerFactory(() => ProductRepository(getIt.get()));
}

void _provideBloc(GetIt getIt) {
  getIt.registerFactory(() => AppBloc());
  getIt.registerFactoryParam((param1, param2) => AuthBloc(
      repository: getIt.get(),
      state: param1 != null ? param1 as AuthState : null));
  getIt.registerFactory(() => SignupBloc(getIt.get()));
  // getIt.registerFactory(() => ProfileBloc(repository: getIt.get()));
  // getIt.registerFactory(() => TimelineBloc(repository: getIt.get()));
  // getIt.registerFactory(() => BudgetBloc(userRepository: getIt.get(), vendorRepository: getIt.get()));
  // getIt.registerFactory(() => WeddingCheckListBloc(userRepository: getIt.get(), vendorRepository: getIt.get()));
  // getIt.registerFactory(() => CategoryBloc(getIt.get()));
  // getIt.registerFactory(() => DressShowroomBloc(getIt.get()));
  // getIt.registerFactory(() => DressDetailBloc(getIt.get()));
  // getIt.registerFactory(() => ProductDetailBloc(getIt.get()));
  // getIt.registerFactory(() => GuidebookBloc(repository: getIt.get()));
}
