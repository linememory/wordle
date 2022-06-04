import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wordle/wordle/domain/guess.dart';
import 'package:wordle/wordle/infrastructure/words_repository.dart';
part 'wordle_notifier.freezed.dart';

class WorldeNotifier extends StateNotifier<WordleState> {
  WorldeNotifier(this.wordsRepository) : super(const WordleState.initial());

  final WordsRepository wordsRepository;

  Future<void> startGame() async {
    final wordOrFailure = await wordsRepository.getRandomWord();
    wordOrFailure.fold(
      (l) => state = WordleState.failure(l.errorMessage),
      (r) => state = WordleState.game(r),
    );
  }

  void addGuess(String guessWord) {
    state.maybeMap(
      game: (value) {
        state = value.copyWith(
          guesses: List.from(value.guesses)
            ..add(
              _getGuessWithMatches(value.word, guessWord),
            ),
        );
        chackIfGuessed();
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
          state = WordleState.gameOver(value.word, value.guesses);
        } else if (value.guesses.length >= 5) {
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
    String word, [
    @Default([]) List<Guess> guesses,
  ]) = _Game;
  const factory WordleState.gameOver(String word, List<Guess> guesses) =
      _GameOver;
  const factory WordleState.failure([String? errorMessage]) = _Failure;
}
