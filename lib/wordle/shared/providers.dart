import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wordle/generated/l10n.dart';
import 'package:wordle/settings/shared/providers.dart';
import 'package:wordle/statistics/shared/providers.dart';
import 'package:wordle/wordle/application/flip_card_keys_notifier.dart';
import 'package:wordle/wordle/application/keyboard_notifier.dart';
import 'package:wordle/wordle/application/wordle_notifier.dart';
import 'package:wordle/wordle/infrastructure/dictionary_datasource.dart';
import 'package:wordle/wordle/infrastructure/dictionary_repository.dart';
import 'package:wordle/wordle/infrastructure/words_datasource.dart';
import 'package:wordle/wordle/infrastructure/words_repository.dart';

final languageFileNameProvider = Provider<Locale>((ref) {
  final settings = ref.watch(settingsProvider);
  if (S.delegate.supportedLocales.contains(settings.language)) {
    return settings.language;
  }
  return const Locale('en');
});

final wordsDatasourceProvider = Provider<WordsDatasource>((ref) {
  return FileWordsDatasource(
    'assets/words/${ref.watch(languageFileNameProvider)}.txt',
  );
});

final wordsRepositoryProvider = Provider<WordsRepository>((ref) {
  return WordsRepository(
    ref.watch(wordsDatasourceProvider),
  );
});

final dictionaryDatasourceProvider = Provider<DictionaryDatasource>((ref) {
  return FileDictionaryDatasource(
    'assets/dictionaries/${ref.watch(languageFileNameProvider)}.txt',
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

final flipCardKeysProvider = StateNotifierProvider<FlipCardKeysNotifier,
    List<List<GlobalKey<FlipCardState>>>>((ref) {
  return FlipCardKeysNotifier();
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
      ref.read(flipCardKeysProvider.notifier),
    );
  },
);
