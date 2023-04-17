import 'dart:async';

import 'package:sqflite/sqflite.dart';

import '../model/user_profile.dart';
import 'base_dao.dart';

class UserProfileDao extends BaseDao {
  static String tableName = "Profile";

  Future<void> insertProfile(UserProfile profile) async {
    await db.insert(tableName, profile.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<UserProfile?> getProfile() async {
    final List<Map<String, dynamic>> maps = await db.query(tableName);

    if (maps.isNotEmpty) {
      final map = maps[0];
      final scheduleStr = map['ceremonyDate'];
      DateTime? ceremonyDate;

      if (scheduleStr != null) {
        ceremonyDate = DateTime.parse(scheduleStr);
      }

      return UserProfile(
          name: map['name'],
          ceremonyDate: ceremonyDate,
          userId: map['userId'],
          userEmail: map['userEmail'],
          phoneNumber: map['phoneNumber'].toString(),
          relationShipCode: map['relationShipCode'],
          divisionCode: map['divisionCode'],
          weddingBudget: map['weddingBudget'] ?? 0,
          hasPush: map['hasPush'] == 1,
          hasMarketingPush: map['hasMarketingPush'] == 1);
    } else {
      return null;
    }
  }

  Future<void> updateProfile(UserProfile profile) async {
    await db.update(tableName, profile.toMap());
  }

  Future<void> deleteAll() async {
    await db.delete(tableName);
  }
}
