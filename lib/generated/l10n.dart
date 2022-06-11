// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: require_trailing_commas, always_use_package_imports

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Wordle`
  String get title {
    return Intl.message(
      'Wordle',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Guess the word`
  String get gameTip {
    return Intl.message(
      'Guess the word',
      name: 'gameTip',
      desc: '',
      args: [],
    );
  }

  /// `You guessed it!`
  String get guessed {
    return Intl.message(
      'You guessed it!',
      name: 'guessed',
      desc: '',
      args: [],
    );
  }

  /// `Game Over`
  String get gameOver {
    return Intl.message(
      'Game Over',
      name: 'gameOver',
      desc: '',
      args: [],
    );
  }

  /// `Play Again`
  String get playAgain {
    return Intl.message(
      'Play Again',
      name: 'playAgain',
      desc: '',
      args: [],
    );
  }

  /// `Failure`
  String get failure {
    return Intl.message(
      'Failure',
      name: 'failure',
      desc: '',
      args: [],
    );
  }

  /// `Try Again`
  String get tryAgain {
    return Intl.message(
      'Try Again',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Statistics`
  String get statistics {
    return Intl.message(
      'Statistics',
      name: 'statistics',
      desc: '',
      args: [],
    );
  }

  /// `Games played`
  String get gamesPlayed {
    return Intl.message(
      'Games played',
      name: 'gamesPlayed',
      desc: '',
      args: [],
    );
  }

  /// `Games won`
  String get gamesWon {
    return Intl.message(
      'Games won',
      name: 'gamesWon',
      desc: '',
      args: [],
    );
  }

  /// `Current Streak`
  String get currentStreak {
    return Intl.message(
      'Current Streak',
      name: 'currentStreak',
      desc: '',
      args: [],
    );
  }

  /// `Longest Streak`
  String get longestStreak {
    return Intl.message(
      'Longest Streak',
      name: 'longestStreak',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Reset Statistics`
  String get resetStatistics {
    return Intl.message(
      'Reset Statistics',
      name: 'resetStatistics',
      desc: '',
      args: [],
    );
  }

  /// `Do you really want to reset the statistics?`
  String get resetStatisticsQuestion {
    return Intl.message(
      'Do you really want to reset the statistics?',
      name: 'resetStatisticsQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'de'),
      Locale.fromSubtags(languageCode: 'it'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
