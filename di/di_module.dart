import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:weddynew/apis/biz/app_biz.pbgrpc.dart';
import 'package:weddynew/apis/preferences.dart';
import 'package:weddynew/di/api_module.dart';
import 'package:weddynew/di/weddy_database.dart';
import 'package:weddynew/screen/auth/verification/timer/bloc/timer_bloc.dart';
import 'package:weddynew/screen/auth/verification/timer/ticker.dart';
import 'package:weddynew/screen/drawer/bloc/update_bloc.dart';
import 'package:weddynew/screen/home/category/detail/bloc/detail_bloc.dart';
import 'package:weddynew/screen/home/category/list/bloc/vendor_list_bloc.dart';
import 'package:weddynew/screen/home/scrap/inquire/bloc/inquire_bloc.dart';

import '../dao/user_profile_dao.dart';
import '../repository/auth_repository.dart';
import '../repository/dress_repository.dart';
import '../repository/product_repository.dart';
import '../repository/schedule_repository.dart';
import '../repository/vendor_repository.dart';
import '../screen/app/bloc/app_bloc.dart';
import '../screen/auth/bloc/auth_bloc.dart';
import '../screen/auth/bloc/auth_state.dart';
import '../screen/auth/signup/bloc/signup_bloc.dart';

import '../screen/home/category/bloc/category_bloc.dart';
import '../screen/home/category/like/bloc/like_bloc.dart';
import '../screen/home/category/weddinghall/weddinghall_detail/bloc/weddinghall_bloc.dart';
import '../screen/home/dress/bloc/dress_showroom_bloc.dart';
import '../screen/home/dress/detail/bloc/dress_detail_bloc.dart';

import '../screen/home/scrap/scrap/bloc/scrap_item_bloc.dart';
import '../screen/home/simulation/bloc/simulation_bloc.dart';
import '../screen/home/young_timeline/bloc/timeline_bloc.dart';
import '../screen/home/young_timeline/item_bloc/timeline_item_bloc.dart';
import '../screen/profile/bloc/profile_bloc.dart';
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
  getIt.registerFactory(() => const Ticker());
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
  getIt.registerFactory(() => ScheduleRepository(getIt.get()));
  //, getIt.get()
  getIt.registerFactory(() => DressRepository(getIt.get()));
  getIt.registerFactory(() => VendorRepository(getIt.get()));
  getIt.registerFactory(() => ProductRepository(getIt.get(), getIt.get()));
  getIt.registerFactory(() => TimelineItem());
}

void _provideBloc(GetIt getIt) {
  getIt.registerFactory(() => AppBloc());
  getIt.registerFactoryParam((param1, param2) => AuthBloc(
      repository: getIt.get(),
      state: param1 != null ? param1 as AuthState : null));
  getIt.registerFactory(() => SignupBloc(getIt.get()));
  getIt.registerFactory(() => TimeLineBloc(
        repository: getIt.get(),
        userRepository: getIt.get(),
      ));
  getIt.registerFactory(() =>
      DressDetailBloc(repository: getIt.get(), productRepository: getIt.get()));
  getIt.registerFactory(() => DressShowroomBloc(getIt.get()));
  getIt.registerFactory(() => ProfileBloc(repository: getIt.get()));

  getIt.registerFactory(() => CategoryBloc(repository: getIt.get()));

  getIt.registerFactory(() =>
      TimelineItemBloc(timelineItem: TimelineItem(), repository: getIt.get()));
  getIt.registerFactory(() => VendorDetailBloc(getIt.get(), getIt.get()));
  getIt.registerFactory(() =>
      VendorListBloc(repository: getIt.get(), productRepository: getIt.get()));

  getIt.registerFactory(() => LikeListBloc(repository: getIt.get()));

  getIt.registerFactory(() => InquireBloc(repository: getIt.get()));
  getIt.registerFactory(() =>
      SimulationBloc(repository: getIt.get(), userRepository: getIt.get()));
  getIt.registerFactory(() => WeddingHallDetailBloc(
      repository: getIt.get(), vendorRepository: getIt.get()));
  getIt.registerFactory(() => UpdateBloc(userRepository: getIt.get()));
  getIt.registerFactory(() => TimerBloc(ticker: const Ticker()));
  getIt.registerFactory(() => ScrapItemBloc(repository: getIt.get()));

  //getIt.registerFactory(() => WeddingCheckListBloc(userRepository: getIt.get(), vendorRepository: getIt.get()));
  // getIt.registerFactory(() => GuidebookBloc(repository: getIt.get()));
}
