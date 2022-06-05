import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wordle/wordle/domain/guess.dart';
import 'package:wordle/wordle/infrastructure/dictionary_repository.dart';
import 'package:wordle/wordle/infrastructure/words_repository.dart';
part 'wordle_notifier.freezed.dart';

class WorldeNotifier extends StateNotifier<WordleState> {
  WorldeNotifier(this.wordsRepository, this.dictionaryRepository)
      : super(const WordleState.initial());

  final WordsRepository wordsRepository;
  final DictionaryRepository dictionaryRepository;
  final int maxGuesses = 6;

  Future<void> startGame() async {
    final wordOrFailure = await wordsRepository.getRandomWord();
    wordOrFailure.fold(
      (l) => state = WordleState.failure(l.errorMessage),
      (r) => state = WordleState.game(r),
    );
  }

  Future<void> addGuess(String guessWord) async {
    state.maybeMap(
      game: (value) async {
        if (await dictionaryRepository.isValid(guessWord)) {
          state = value.copyWith(
            invalidGuess: false,
            guesses: List.from(value.guesses)
              ..add(
                _getGuessWithMatches(value.word, guessWord),
              ),
          );
          chackIfGuessed();
        } else {
          state = value.copyWith(
            invalidGuess: true,
            guesses: List.from(value.guesses),
          );
        }
      },
      orElse: () {},
    );
  }

  Guess _getGuessWithMatches(String word, String guess) {
    final List<Match> result = List<Match>.filled(word.length, Match.none);
    for (var i = 0; i < word.length; i++) {
      if (word[i] == guess[i]) {
        result[i] = Match.match;
      } else if (word.contains(guess[i])) {
        result[i] = Match.wrongPosition;
      }
    }
    return Guess(guess, result);
  }

  void chackIfGuessed() {
    state.maybeMap(
      game: (value) {
        if (value.word == value.guesses.last.word) {
          state =
              WordleState.gameOver(value.word, value.guesses, hasGuessed: true);
        } else if (value.guesses.length >= maxGuesses) {
          state = WordleState.gameOver(value.word, value.guesses);
        }
      },
      orElse: () {},
    );
  }
}

@freezed
class WordleState with _$WordleState {
  const factory WordleState.initial() = _Initial;
  const factory WordleState.game(
    String word, {
    @Default([]) List<Guess> guesses,
    @Default(false) bool invalidGuess,
  }) = _Game;
  const factory WordleState.gameOver(
    String word,
    List<Guess> guesses, {
    @Default(false) bool hasGuessed,
  }) = _GameOver;
  const factory WordleState.failure([String? errorMessage]) = _Failure;
}
