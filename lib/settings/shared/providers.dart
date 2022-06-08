import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wordle/core/shared/providers.dart';
import 'package:wordle/settings/domain/settings_notifier.dart';
import 'package:wordle/settings/infrastructure/settings_repository.dart';

final settingsProvider =
    StateNotifierProvider<SettingsNotifier, SettingsState>((ref) {
  return SettingsNotifier(ref.watch(settingsRepositoryProvider));
});

final settingsRepositoryProvider = Provider<SettingsRepository>((ref) {
  return SettingsRepository(ref.watch(sharedPreferencesDatasourceProvider));
});
