import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wordle/wordle/application/wordle_notifier.dart';
import 'package:wordle/wordle/infrastructure/words_datasource.dart';
import 'package:wordle/wordle/infrastructure/words_repository.dart';

final assetPathProvider = Provider<String>((ref) {
  return 'assets/en.txt';
});

final wordsDatasourceProvider = Provider<WordsDatasource>((ref) {
  return FileWordsDatasource(ref.watch(assetPathProvider));
});

final wordsRepositoryProvider = Provider<WordsRepository>((ref) {
  return WordsRepository(ref.watch(wordsDatasourceProvider));
});

final wordleProvider = StateNotifierProvider<WorldeNotifier, WordleState>(
  (ref) {
    return WorldeNotifier(ref.watch(wordsRepositoryProvider));
  },
);
