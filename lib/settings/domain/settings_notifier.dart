import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wordle/settings/infrastructure/settings_repository.dart';

part 'settings_notifier.freezed.dart';
part 'settings_notifier.g.dart';

class SettingsNotifier extends StateNotifier<SettingsState> {
  SettingsNotifier(this._settingsRepository) : super(const SettingsState());

  final SettingsRepository _settingsRepository;

  Future<void> loadSettings() async {
    state = await _settingsRepository.load();
  }

  void setLanguage(String language) {
    if (SettingsState.supportedLanguages.contains(language)) {
      state = state.copyWith(language: language);
      _settingsRepository.save(state);
    }
  }
}

@freezed
class SettingsState with _$SettingsState {
  static const supportedLanguages = ['en', 'de', 'it', 'ru'];
  const factory SettingsState({@Default('en') String language}) =
      _SettingsState;

  factory SettingsState.fromJson(Map<String, Object?> json) =>
      _$SettingsStateFromJson(json);
}
