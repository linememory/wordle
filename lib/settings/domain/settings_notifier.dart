import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wordle/generated/l10n.dart';
import 'package:wordle/settings/infrastructure/settings_repository.dart';

part 'settings_notifier.freezed.dart';
part 'settings_notifier.g.dart';

class SettingsNotifier extends StateNotifier<SettingsState> {
  SettingsNotifier(this._settingsRepository) : super(const SettingsState());

  final SettingsRepository _settingsRepository;

  Future<void> loadSettings() async {
    state = await _settingsRepository.load();
  }

  void setLanguage(Locale language) {
    if (S.delegate.supportedLocales.contains(language)) {
      state = state.copyWith(language: language);
      _settingsRepository.save(state);
    }
  }
}

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState(
          {@Default(Locale('en')) @LocaleConverter() Locale language}) =
      _SettingsState;

  factory SettingsState.fromJson(Map<String, Object?> json) =>
      _$SettingsStateFromJson(json);
}

class LocaleConverter implements JsonConverter<Locale, Map<String, dynamic>> {
  const LocaleConverter();

  @override
  Locale fromJson(Map<String, dynamic> locale) {
    return Locale((locale['language'] ?? 'en') as String);
  }

  @override
  Map<String, dynamic> toJson(Locale locale) =>
      {'language': locale.languageCode};
}
