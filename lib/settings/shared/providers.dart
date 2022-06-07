import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wordle/settings/domain/settings_notifier.dart';
import 'package:wordle/settings/infrastructure/settings_datasource.dart';

final settingsProvider =
    StateNotifierProvider<SettingsNotifier, SettingsState>((ref) {
  return SettingsNotifier(ref.watch(settingsDatasourceProvider));
});

final settingsDatasourceProvider = Provider<SettingsDatasource>((ref) {
  return SettingsDatasource();
});
