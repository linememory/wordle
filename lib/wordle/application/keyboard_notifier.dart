import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wordle/wordle/domain/guess.dart';

part 'keyboard_notifier.freezed.dart';

class KeyboardNotifier extends StateNotifier<KeyboardState> {
  KeyboardNotifier() : super(const KeyboardState());

  void addKey(String key, LetterMatch match) {
    assert(key.length == 1);
    final newLetters = Map<String, LetterMatch>.from(state.letters);
    final currentMatch = newLetters[key];

    // if (match == LetterMatch.none && currentMatch != null) return;
    if (currentMatch == LetterMatch.match) return;
    state = state.copyWith(letters: newLetters..[key] = match);
  }
}

@freezed
class KeyboardState with _$KeyboardState {
  const factory KeyboardState({
    @Default({}) Map<String, LetterMatch> letters,
  }) = _KeyboardState;
}
