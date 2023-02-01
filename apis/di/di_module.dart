import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:weddy_ceres/apis/di/api_module.dart';

import '../../dao/user_profile_dao.dart';
import '../../weddy_database.dart';
import 'network_module.dart';

final getIt = GetIt.instance;

Future<void> initGetIt() async {
  ApiModule().provide(getIt);
}

Future<void> _provideDatabase(GetIt getIt) async {
  getIt.registerSingleton<Database>(await database);
  getIt.registerFactory(() => UserProfileDao());
}
