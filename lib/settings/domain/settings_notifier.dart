import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wordle/settings/infrastructure/settings_datasource.dart';

part 'settings_notifier.freezed.dart';
part 'settings_notifier.g.dart';

class SettingsNotifier extends StateNotifier<SettingsState> {
  SettingsNotifier(this._settingsDatasource) : super(const SettingsState());

  final SettingsDatasource _settingsDatasource;

  Future<void> loadSettings() async {
    state = await _settingsDatasource.load();
  }

  void setLanguage(String language) {
    if (SettingsState.supportedLanguages.contains(language)) {
      state = state.copyWith(language: language);
      _settingsDatasource.save(state);
    }
  }
}

@freezed
class SettingsState with _$SettingsState {
  static const supportedLanguages = ['en', 'de'];
  const factory SettingsState({@Default('en') String language}) =
      _SettingsState;

  factory SettingsState.fromJson(Map<String, Object?> json) =>
      _$SettingsStateFromJson(json);
}
