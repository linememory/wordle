import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesDatasource {
  Future<void> save(String key, Map<String, dynamic> data) async {
    final SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
    sharedPrefs.setString(key, json.encode(data));
  }

  Future<Map<String, dynamic>> load(String key) async {
    final SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
    try {
      final result =
          json.decode(sharedPrefs.getString(key) ?? "") as Map<String, Object?>;
      return result;
    } catch (e) {
      return {};
    }
  }

  Future<void> remove(String key) async {
    final SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
    sharedPrefs.remove(key);
  }
}
