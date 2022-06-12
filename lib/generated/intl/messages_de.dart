// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'de';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "currentStreak":
            MessageLookupByLibrary.simpleMessage("Aktueller Streak"),
        "failure": MessageLookupByLibrary.simpleMessage("Fehler"),
        "gameOver": MessageLookupByLibrary.simpleMessage("Game Over"),
        "gameTip": MessageLookupByLibrary.simpleMessage("Errate das Wort"),
        "gamesPlayed": MessageLookupByLibrary.simpleMessage("Gespielte Spiele"),
        "gamesWon": MessageLookupByLibrary.simpleMessage("Gewonnene Spiele"),
        "guessed": MessageLookupByLibrary.simpleMessage("Du hast es erraten!"),
        "language": MessageLookupByLibrary.simpleMessage("Sprache"),
        "longestStreak":
            MessageLookupByLibrary.simpleMessage("Längster Streak"),
        "no": MessageLookupByLibrary.simpleMessage("Nein"),
        "playAgain": MessageLookupByLibrary.simpleMessage("Nochmal"),
        "resetStatistics":
            MessageLookupByLibrary.simpleMessage("Statistiken zurücksetzen"),
        "resetStatisticsQuestion": MessageLookupByLibrary.simpleMessage(
            "Willst du die Statistiken wirklich zurücksetzen?"),
        "settings": MessageLookupByLibrary.simpleMessage("Einstellungen"),
        "statistics": MessageLookupByLibrary.simpleMessage("Statistiken"),
        "title": MessageLookupByLibrary.simpleMessage("Wordle"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("Nochmal"),
        "yes": MessageLookupByLibrary.simpleMessage("Ja")
      };
}
