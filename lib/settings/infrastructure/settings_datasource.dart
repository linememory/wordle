import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:wordle/settings/domain/settings_notifier.dart';

class SettingsDatasource {
  Future<void> save(SettingsState settings) async {
    final SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
    sharedPrefs.setString("settings", json.encode(settings.toJson()));
  }

  Future<SettingsState> load() async {
    //return SettingsState();
    final SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
    try {
      final result = json.decode(sharedPrefs.getString("settings") ?? "")
          as Map<String, Object?>;
      return SettingsState.fromJson(result);
    } catch (e) {
      return const SettingsState();
    }
  }
}
