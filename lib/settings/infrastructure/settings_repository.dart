import 'package:wordle/core/infrastructure/shared_preferences_datasource.dart';
import 'package:wordle/settings/domain/settings_notifier.dart';

class SettingsRepository {
  final SharedPreferencesDatasource _sharedPreferencesDatasource;

  SettingsRepository(this._sharedPreferencesDatasource);
  void save(SettingsState settings) {
    _sharedPreferencesDatasource.save(settings.toJson(), 'settings');
  }

  Future<SettingsState> load() async {
    return SettingsState.fromJson(
      await _sharedPreferencesDatasource.load('settings'),
    );
  }
}
