import 'package:freezed_annotation/freezed_annotation.dart';

part 'guess.freezed.dart';

@freezed
class Guess with _$Guess {
  factory Guess(String word, List<Match> match) = _Guess;
}

enum Match {
  none,
  match,
  wrongPosition,
}
