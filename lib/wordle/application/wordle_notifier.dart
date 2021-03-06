import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wordle/statistics/domain/statistics_notifier.dart';
import 'package:wordle/wordle/application/flip_card_keys_notifier.dart';
import 'package:wordle/wordle/application/keyboard_notifier.dart';
import 'package:wordle/wordle/domain/guess.dart';
import 'package:wordle/wordle/infrastructure/dictionary_repository.dart';
import 'package:wordle/wordle/infrastructure/words_repository.dart';

part 'wordle_notifier.freezed.dart';

class WorldeNotifier extends StateNotifier<WordleState> {
  WorldeNotifier(
    this._wordsRepository,
    this._dictionaryRepository,
    this._keyboardNotifier,
    this._statisticsNotifier,
    this._flipCardKeys,
  ) : super(const WordleState.initial());

  final WordsRepository _wordsRepository;
  final DictionaryRepository _dictionaryRepository;
  final KeyboardNotifier _keyboardNotifier;
  final StatisticsNotifier _statisticsNotifier;
  final FlipCardKeysNotifier _flipCardKeys;

  final int maxGuesses = 6;

  Future<void> startGame() async {
    final wordOrFailure = await _wordsRepository.getRandomWord();
    _keyboardNotifier.clear();
    _flipCardKeys.clear();
    wordOrFailure.fold(
      (l) => state = WordleState.failure(l.errorMessage),
      (r) => state = WordleState.game(
        r.toLowerCase(),
        guesses: List.filled(
          maxGuesses,
          Guess(
            '',
            List.filled(5, LetterMatch.none),
          ),
        ),
      ),
    );
  }

  void inputLetter(String input) {
    state.maybeMap(
      game: (value) {
        final List<Guess> newGuesses = List.from(value.guesses);
        final guess = newGuesses[value.currentGuess];
        if (guess.word.length < 5) {
          newGuesses[value.currentGuess] =
              guess.copyWith(word: guess.word + input);
          state = value.copyWith(
            invalidGuess: false,
            guesses: newGuesses,
          );
          if (guess.word.length == 4) {
            submitGuess();
          }
        }
      },
      orElse: () {},
    );
  }

  void removeLetter() {
    state.maybeMap(
      game: (value) {
        final List<Guess> newGuesses = List.from(value.guesses);
        final Guess guess = newGuesses[value.currentGuess];
        if (guess.word.isNotEmpty) {
          newGuesses[value.currentGuess] = newGuesses[value.currentGuess]
              .copyWith(word: guess.word.substring(0, guess.word.length - 1));
        }
        state = value.copyWith(
          invalidGuess: false,
          guesses: newGuesses,
        );
      },
      orElse: () {},
    );
  }

  Future<void> submitGuess() async {
    state.maybeMap(
      game: (value) async {
        final String guessedWord = value.guesses[value.currentGuess].word;
        if (await _dictionaryRepository.isValid(guessedWord)) {
          await _flipCardKeys.flipGuess(value.currentGuess);
          // Guessed
          if (guessedWord == value.word) {
            final Guess guess = value.guesses[value.currentGuess];
            state = WordleState.gameOver(
              value.word,
              List.from(value.guesses)
                ..[value.currentGuess] =
                    _getGuessWithMatches(value.word, guess.word),
              hasGuessed: true,
            );
            _statisticsNotifier.addGame(value.currentGuess);
          }
          // Game over
          else if (value.currentGuess >= maxGuesses - 1) {
            final Guess guess = value.guesses[value.currentGuess];
            state = WordleState.gameOver(
              value.word,
              List.from(value.guesses)
                ..[value.currentGuess] =
                    _getGuessWithMatches(value.word, guess.word),
              hasGuessed: false,
            );
            _statisticsNotifier.addGame(value.currentGuess + 1);
          }
          // add guess
          else {
            final Guess guess = value.guesses[value.currentGuess];
            state = value.copyWith(
              currentGuess: value.currentGuess + 1,
              invalidGuess: false,
              guesses: List.from(value.guesses)
                ..[value.currentGuess] =
                    _getGuessWithMatches(value.word, guess.word),
            );
          }
        } else {
          final List<Guess> guesses = List.from(value.guesses);
          guesses[value.currentGuess] =
              guesses[value.currentGuess].copyWith(isInvalid: true);
          state = value.copyWith(invalidGuess: true, guesses: guesses);
        }
      },
      orElse: () {},
    );
  }

  Guess _getGuessWithMatches(String word, String guess) {
    final List<LetterMatch> result =
        List<LetterMatch>.filled(word.length, LetterMatch.none);
    for (var i = 0; i < word.length; i++) {
      if (word[i] == guess[i].toLowerCase()) {
        result[i] = LetterMatch.match;
      } else if (word.contains(guess[i].toLowerCase())) {
        result[i] = LetterMatch.wrongPosition;
      }
      _keyboardNotifier.addKey(guess[i], result[i]);
    }

    return Guess(guess, result, isSubmitted: true);
  }
}

@freezed
class WordleState with _$WordleState {
  const factory WordleState.initial() = _Initial;
  const factory WordleState.game(
    String word, {
    @Default(0) int currentGuess,
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
