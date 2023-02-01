import 'package:shared_preferences/shared_preferences.dart';

class PreferencesCustom {
  PreferencesCustom(SharedPreferences sharedPreferences) {
    _sharedPreferences = sharedPreferences;
  }

  late SharedPreferences _sharedPreferences;

  String get accessToken => _sharedPreferences.getString("accessToken") ?? "";
  set accessToken(String value) => _sharedPreferences.setString("accessToken", value);

  String get deviceId => _sharedPreferences.getString("deviceId") ?? "";
  set deviceId(String value) => _sharedPreferences.setString("deviceId", value);

  String get pushToken => _sharedPreferences.getString("pushToken") ?? "";
  set pushToken(String value) => _sharedPreferences.setString("pushToken", value);
}