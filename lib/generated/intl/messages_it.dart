// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a it locale. All the
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
  String get localeName => 'it';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "currentStreak":
            MessageLookupByLibrary.simpleMessage("Striscia vincente attuale"),
        "failure": MessageLookupByLibrary.simpleMessage("Errore"),
        "gameOver": MessageLookupByLibrary.simpleMessage("Fine del gioco"),
        "gameTip": MessageLookupByLibrary.simpleMessage("indovina la parola"),
        "gamesPlayed": MessageLookupByLibrary.simpleMessage("Giochi giocati"),
        "gamesWon": MessageLookupByLibrary.simpleMessage("Giochi vinti"),
        "guessed":
            MessageLookupByLibrary.simpleMessage("Hai indovinato la parola!"),
        "language": MessageLookupByLibrary.simpleMessage("Lingua"),
        "longestStreak":
            MessageLookupByLibrary.simpleMessage("Striscia vincente più lunga"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "playAgain": MessageLookupByLibrary.simpleMessage("Riprova"),
        "resetStatistics":
            MessageLookupByLibrary.simpleMessage("Ripristinare statistiche"),
        "resetStatisticsQuestion": MessageLookupByLibrary.simpleMessage(
            "Vuole davvero ripristinare le statistiche?"),
        "settings": MessageLookupByLibrary.simpleMessage("Impostazioni"),
        "statistics": MessageLookupByLibrary.simpleMessage("Statistiche"),
        "title": MessageLookupByLibrary.simpleMessage("Wordle"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("Riprova"),
        "yes": MessageLookupByLibrary.simpleMessage("Sì")
      };
}
