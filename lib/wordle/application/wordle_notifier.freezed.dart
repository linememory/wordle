// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wordle_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WordleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String word, int currentGuess,
            List<Guess> guesses, bool invalidGuess)
        game,
    required TResult Function(String word, List<Guess> guesses, bool hasGuessed)
        gameOver,
    required TResult Function(String? errorMessage) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String word, int currentGuess, List<Guess> guesses,
            bool invalidGuess)?
        game,
    TResult Function(String word, List<Guess> guesses, bool hasGuessed)?
        gameOver,
    TResult Function(String? errorMessage)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String word, int currentGuess, List<Guess> guesses,
            bool invalidGuess)?
        game,
    TResult Function(String word, List<Guess> guesses, bool hasGuessed)?
        gameOver,
    TResult Function(String? errorMessage)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Game value) game,
    required TResult Function(_GameOver value) gameOver,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Game value)? game,
    TResult Function(_GameOver value)? gameOver,
    TResult Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Game value)? game,
    TResult Function(_GameOver value)? gameOver,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordleStateCopyWith<$Res> {
  factory $WordleStateCopyWith(
          WordleState value, $Res Function(WordleState) then) =
      _$WordleStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WordleStateCopyWithImpl<$Res> implements $WordleStateCopyWith<$Res> {
  _$WordleStateCopyWithImpl(this._value, this._then);

  final WordleState _value;
  // ignore: unused_field
  final $Res Function(WordleState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$WordleStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'WordleState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String word, int currentGuess,
            List<Guess> guesses, bool invalidGuess)
        game,
    required TResult Function(String word, List<Guess> guesses, bool hasGuessed)
        gameOver,
    required TResult Function(String? errorMessage) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String word, int currentGuess, List<Guess> guesses,
            bool invalidGuess)?
        game,
    TResult Function(String word, List<Guess> guesses, bool hasGuessed)?
        gameOver,
    TResult Function(String? errorMessage)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String word, int currentGuess, List<Guess> guesses,
            bool invalidGuess)?
        game,
    TResult Function(String word, List<Guess> guesses, bool hasGuessed)?
        gameOver,
    TResult Function(String? errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Game value) game,
    required TResult Function(_GameOver value) gameOver,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Game value)? game,
    TResult Function(_GameOver value)? gameOver,
    TResult Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Game value)? game,
    TResult Function(_GameOver value)? gameOver,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WordleState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_GameCopyWith<$Res> {
  factory _$$_GameCopyWith(_$_Game value, $Res Function(_$_Game) then) =
      __$$_GameCopyWithImpl<$Res>;
  $Res call(
      {String word, int currentGuess, List<Guess> guesses, bool invalidGuess});
}

/// @nodoc
class __$$_GameCopyWithImpl<$Res> extends _$WordleStateCopyWithImpl<$Res>
    implements _$$_GameCopyWith<$Res> {
  __$$_GameCopyWithImpl(_$_Game _value, $Res Function(_$_Game) _then)
      : super(_value, (v) => _then(v as _$_Game));

  @override
  _$_Game get _value => super._value as _$_Game;

  @override
  $Res call({
    Object? word = freezed,
    Object? currentGuess = freezed,
    Object? guesses = freezed,
    Object? invalidGuess = freezed,
  }) {
    return _then(_$_Game(
      word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      currentGuess: currentGuess == freezed
          ? _value.currentGuess
          : currentGuess // ignore: cast_nullable_to_non_nullable
              as int,
      guesses: guesses == freezed
          ? _value._guesses
          : guesses // ignore: cast_nullable_to_non_nullable
              as List<Guess>,
      invalidGuess: invalidGuess == freezed
          ? _value.invalidGuess
          : invalidGuess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Game implements _Game {
  const _$_Game(this.word,
      {this.currentGuess = 0,
      final List<Guess> guesses = const [],
      this.invalidGuess = false})
      : _guesses = guesses;

  @override
  final String word;
  @override
  @JsonKey()
  final int currentGuess;
  final List<Guess> _guesses;
  @override
  @JsonKey()
  List<Guess> get guesses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_guesses);
  }

  @override
  @JsonKey()
  final bool invalidGuess;

  @override
  String toString() {
    return 'WordleState.game(word: $word, currentGuess: $currentGuess, guesses: $guesses, invalidGuess: $invalidGuess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Game &&
            const DeepCollectionEquality().equals(other.word, word) &&
            const DeepCollectionEquality()
                .equals(other.currentGuess, currentGuess) &&
            const DeepCollectionEquality().equals(other._guesses, _guesses) &&
            const DeepCollectionEquality()
                .equals(other.invalidGuess, invalidGuess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(word),
      const DeepCollectionEquality().hash(currentGuess),
      const DeepCollectionEquality().hash(_guesses),
      const DeepCollectionEquality().hash(invalidGuess));

  @JsonKey(ignore: true)
  @override
  _$$_GameCopyWith<_$_Game> get copyWith =>
      __$$_GameCopyWithImpl<_$_Game>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String word, int currentGuess,
            List<Guess> guesses, bool invalidGuess)
        game,
    required TResult Function(String word, List<Guess> guesses, bool hasGuessed)
        gameOver,
    required TResult Function(String? errorMessage) failure,
  }) {
    return game(word, currentGuess, guesses, invalidGuess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String word, int currentGuess, List<Guess> guesses,
            bool invalidGuess)?
        game,
    TResult Function(String word, List<Guess> guesses, bool hasGuessed)?
        gameOver,
    TResult Function(String? errorMessage)? failure,
  }) {
    return game?.call(word, currentGuess, guesses, invalidGuess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String word, int currentGuess, List<Guess> guesses,
            bool invalidGuess)?
        game,
    TResult Function(String word, List<Guess> guesses, bool hasGuessed)?
        gameOver,
    TResult Function(String? errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (game != null) {
      return game(word, currentGuess, guesses, invalidGuess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Game value) game,
    required TResult Function(_GameOver value) gameOver,
    required TResult Function(_Failure value) failure,
  }) {
    return game(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Game value)? game,
    TResult Function(_GameOver value)? gameOver,
    TResult Function(_Failure value)? failure,
  }) {
    return game?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Game value)? game,
    TResult Function(_GameOver value)? gameOver,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (game != null) {
      return game(this);
    }
    return orElse();
  }
}

abstract class _Game implements WordleState {
  const factory _Game(final String word,
      {final int currentGuess,
      final List<Guess> guesses,
      final bool invalidGuess}) = _$_Game;

  String get word => throw _privateConstructorUsedError;
  int get currentGuess => throw _privateConstructorUsedError;
  List<Guess> get guesses => throw _privateConstructorUsedError;
  bool get invalidGuess => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_GameCopyWith<_$_Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GameOverCopyWith<$Res> {
  factory _$$_GameOverCopyWith(
          _$_GameOver value, $Res Function(_$_GameOver) then) =
      __$$_GameOverCopyWithImpl<$Res>;
  $Res call({String word, List<Guess> guesses, bool hasGuessed});
}

/// @nodoc
class __$$_GameOverCopyWithImpl<$Res> extends _$WordleStateCopyWithImpl<$Res>
    implements _$$_GameOverCopyWith<$Res> {
  __$$_GameOverCopyWithImpl(
      _$_GameOver _value, $Res Function(_$_GameOver) _then)
      : super(_value, (v) => _then(v as _$_GameOver));

  @override
  _$_GameOver get _value => super._value as _$_GameOver;

  @override
  $Res call({
    Object? word = freezed,
    Object? guesses = freezed,
    Object? hasGuessed = freezed,
  }) {
    return _then(_$_GameOver(
      word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      guesses == freezed
          ? _value._guesses
          : guesses // ignore: cast_nullable_to_non_nullable
              as List<Guess>,
      hasGuessed: hasGuessed == freezed
          ? _value.hasGuessed
          : hasGuessed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GameOver implements _GameOver {
  const _$_GameOver(this.word, final List<Guess> guesses,
      {this.hasGuessed = false})
      : _guesses = guesses;

  @override
  final String word;
  final List<Guess> _guesses;
  @override
  List<Guess> get guesses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_guesses);
  }

  @override
  @JsonKey()
  final bool hasGuessed;

  @override
  String toString() {
    return 'WordleState.gameOver(word: $word, guesses: $guesses, hasGuessed: $hasGuessed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameOver &&
            const DeepCollectionEquality().equals(other.word, word) &&
            const DeepCollectionEquality().equals(other._guesses, _guesses) &&
            const DeepCollectionEquality()
                .equals(other.hasGuessed, hasGuessed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(word),
      const DeepCollectionEquality().hash(_guesses),
      const DeepCollectionEquality().hash(hasGuessed));

  @JsonKey(ignore: true)
  @override
  _$$_GameOverCopyWith<_$_GameOver> get copyWith =>
      __$$_GameOverCopyWithImpl<_$_GameOver>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String word, int currentGuess,
            List<Guess> guesses, bool invalidGuess)
        game,
    required TResult Function(String word, List<Guess> guesses, bool hasGuessed)
        gameOver,
    required TResult Function(String? errorMessage) failure,
  }) {
    return gameOver(word, guesses, hasGuessed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String word, int currentGuess, List<Guess> guesses,
            bool invalidGuess)?
        game,
    TResult Function(String word, List<Guess> guesses, bool hasGuessed)?
        gameOver,
    TResult Function(String? errorMessage)? failure,
  }) {
    return gameOver?.call(word, guesses, hasGuessed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String word, int currentGuess, List<Guess> guesses,
            bool invalidGuess)?
        game,
    TResult Function(String word, List<Guess> guesses, bool hasGuessed)?
        gameOver,
    TResult Function(String? errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (gameOver != null) {
      return gameOver(word, guesses, hasGuessed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Game value) game,
    required TResult Function(_GameOver value) gameOver,
    required TResult Function(_Failure value) failure,
  }) {
    return gameOver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Game value)? game,
    TResult Function(_GameOver value)? gameOver,
    TResult Function(_Failure value)? failure,
  }) {
    return gameOver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Game value)? game,
    TResult Function(_GameOver value)? gameOver,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (gameOver != null) {
      return gameOver(this);
    }
    return orElse();
  }
}

abstract class _GameOver implements WordleState {
  const factory _GameOver(final String word, final List<Guess> guesses,
      {final bool hasGuessed}) = _$_GameOver;

  String get word => throw _privateConstructorUsedError;
  List<Guess> get guesses => throw _privateConstructorUsedError;
  bool get hasGuessed => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_GameOverCopyWith<_$_GameOver> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res> extends _$WordleStateCopyWithImpl<$Res>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, (v) => _then(v as _$_Failure));

  @override
  _$_Failure get _value => super._value as _$_Failure;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$_Failure(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure([this.errorMessage]);

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'WordleState.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String word, int currentGuess,
            List<Guess> guesses, bool invalidGuess)
        game,
    required TResult Function(String word, List<Guess> guesses, bool hasGuessed)
        gameOver,
    required TResult Function(String? errorMessage) failure,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String word, int currentGuess, List<Guess> guesses,
            bool invalidGuess)?
        game,
    TResult Function(String word, List<Guess> guesses, bool hasGuessed)?
        gameOver,
    TResult Function(String? errorMessage)? failure,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String word, int currentGuess, List<Guess> guesses,
            bool invalidGuess)?
        game,
    TResult Function(String word, List<Guess> guesses, bool hasGuessed)?
        gameOver,
    TResult Function(String? errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Game value) game,
    required TResult Function(_GameOver value) gameOver,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Game value)? game,
    TResult Function(_GameOver value)? gameOver,
    TResult Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Game value)? game,
    TResult Function(_GameOver value)? gameOver,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements WordleState {
  const factory _Failure([final String? errorMessage]) = _$_Failure;

  String? get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
