import 'package:freezed_annotation/freezed_annotation.dart';

part 'guess.freezed.dart';

@freezed
class Guess with _$Guess {
  factory Guess(String word, List<LetterMatch> match) = _Guess;
}

enum LetterMatch {
  none,
  match,
  wrongPosition,
}
