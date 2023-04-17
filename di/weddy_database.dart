import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../dao/user_profile_dao.dart';
import '../utils/logger.dart';

var _database;

Future<Database> get database async {
  if (_database != null) return _database;

  _database = openDatabase(join(await getDatabasesPath(), 'weddy.db'),
      onCreate: (db, version) async {
    await _createTable(db);
  }, version: 1);

  return _database;
}

Future<Database> _createTable(Database db) async {
  Logger.d("create table", tag: "Do DEBUG");
  await db.execute('CREATE TABLE ${UserProfileDao.tableName}('
      'id INTEGER PRIMARY KEY AUTOINCREMENT, '
      'name TEXT, '
      'ceremonyDate TEXT, '
      'relationShipCode INTEGER, '
      'divisionCode INTEGER, '
      'numberOfGuest INTEGER, '
      'weddingBudget INTEGER, '
      'hasPush INTEGER, '
      'userId String, '
      'userEmail String, '
      'phoneNumber String, '
      'hasMarketingPush INTEGER'
      ')');

  return db;
}
