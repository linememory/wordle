import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wordle/settings/shared/providers.dart';
import 'package:wordle/statistics/shared/providers.dart';
import 'package:wordle/wordle/application/keyboard_notifier.dart';
import 'package:wordle/wordle/application/wordle_notifier.dart';
import 'package:wordle/wordle/infrastructure/dictionary_datasource.dart';
import 'package:wordle/wordle/infrastructure/dictionary_repository.dart';
import 'package:wordle/wordle/infrastructure/words_datasource.dart';
import 'package:wordle/wordle/infrastructure/words_repository.dart';

final wordsAssetPathProvider = Provider<String>((ref) {
  final settings = ref.watch(settingsProvider);
  switch (settings.language) {
    case 'en':
      return 'assets/words/en.txt';
    case 'de':
      return 'assets/words/de.txt';
  }
  return 'assets/words/en.txt';
});

final wordsDatasourceProvider = Provider<WordsDatasource>((ref) {
  return FileWordsDatasource(
    ref.watch(wordsAssetPathProvider),
  );
});

final wordsRepositoryProvider = Provider<WordsRepository>((ref) {
  return WordsRepository(
    ref.watch(wordsDatasourceProvider),
  );
});

final dictionaryAssetPathProvider = Provider<String>((ref) {
  final settings = ref.watch(settingsProvider);
  switch (settings.language) {
    case 'en':
      return 'assets/dictionaries/en.txt';
    case 'de':
      return 'assets/dictionaries/de.txt';
  }
  return 'assets/dictionaries/en.txt';
});

final dictionaryDatasourceProvider = Provider<DictionaryDatasource>((ref) {
  return FileDictionaryDatasource(
    ref.watch(dictionaryAssetPathProvider),
  );
});

final dictionaryRepositoryProvider = Provider<DictionaryRepository>((ref) {
  return DictionaryRepository(
    ref.watch(dictionaryDatasourceProvider),
  );
});

final keyboardProvider =
    StateNotifierProvider<KeyboardNotifier, KeyboardState>((ref) {
  return KeyboardNotifier();
});

final wordleProvider = StateNotifierProvider<WorldeNotifier, WordleState>(
  (ref) {
    return WorldeNotifier(
      ref.watch(wordsRepositoryProvider),
      ref.watch(
        dictionaryRepositoryProvider,
      ),
      ref.read(keyboardProvider.notifier),
      ref.read(statisticsProvider.notifier),
    );
  },
);
