import 'package:wordle/core/infrastructure/shared_preferences_datasource.dart';
import 'package:wordle/settings/domain/settings_notifier.dart';

class SettingsRepository {
  final SharedPreferencesDatasource _sharedPreferencesDatasource;

  static const String sharedPrefKey = 'setting';

  SettingsRepository(this._sharedPreferencesDatasource);
  void save(SettingsState settings) {
    _sharedPreferencesDatasource.save(sharedPrefKey, settings.toJson());
  }

  Future<SettingsState> load() async {
    return SettingsState.fromJson(
      await _sharedPreferencesDatasource.load(sharedPrefKey),
    );
  }
}
