import 'package:sqflite/sqflite.dart';

import '../di/di_module.dart';

class BaseDao {
  final db = getIt.get<Database>();
}
