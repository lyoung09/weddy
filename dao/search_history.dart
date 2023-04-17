import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart' as sql;
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:weddynew/model/search_history.dart';

class SQLHelper {
  static Future<void> createTables(sql.Database database) async {
    await database.execute("""CREATE TABLE items(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        email TEXT,
        name TEXT
      )
      """);
  }
// id: the id of a item
// title, description: name and description of your activity
// created_at: the time that the item was created. It will be automatically handled by SQLite

  static Future<sql.Database> db() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'helloworld.db');
    return sql.openDatabase(
      path,
      version: 1,
      onCreate: (sql.Database database, int version) async {
        await createTables(database);
      },
    );
  }

  // Create new item (journal)
  static Future<int> createItem(String? descrption, String email) async {
    final db = await SQLHelper.db();

    final data = {'name': descrption, 'email': email};
    final id = await db.insert(
      'items',
      data,
    );
    final datas = {'name': descrption, 'id': id};
    db.update('items', datas, where: 'email = ?', whereArgs: [email]);

    return id;
  }

  static Future<List<SearchHistory>> getItem(String email) async {
    final db = await SQLHelper.db();
    var groceries = await db.query('items',
        where: "email = ?", whereArgs: [email], limit: 10);
    List<SearchHistory> groceryList = groceries.toList().isNotEmpty
        ? groceries.map((c) => SearchHistory.fromMap(c)).toList()
        : [];
    var seen = Set<String>();

    groceryList =
        groceryList.where((student) => seen.add(student.name)).toList();

    return groceryList;
  }

  // Delete
  static Future<void> deleteId(int id, String email) async {
    final db = await SQLHelper.db();
    try {
      await db.delete("items",
          where: "id = ? and email = ?", whereArgs: [id, email]);
    } catch (err) {
      debugPrint("Something went wrong when deleting an item: $err");
    }
  }

  // DeleteAll
  static Future<void> deleteAll(String email) async {
    final db = await SQLHelper.db();
    try {
      await db.delete("items", where: "email = ?", whereArgs: [email]);
    } catch (err) {
      debugPrint("Something went wrong when deleting an item: $err");
    }
  }
}
