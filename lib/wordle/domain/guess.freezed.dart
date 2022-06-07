// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'guess.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Guess {
  String get word => throw _privateConstructorUsedError;
  List<LetterMatch> get match => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GuessCopyWith<Guess> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuessCopyWith<$Res> {
  factory $GuessCopyWith(Guess value, $Res Function(Guess) then) =
      _$GuessCopyWithImpl<$Res>;
  $Res call({String word, List<LetterMatch> match});
}

/// @nodoc
class _$GuessCopyWithImpl<$Res> implements $GuessCopyWith<$Res> {
  _$GuessCopyWithImpl(this._value, this._then);

  final Guess _value;
  // ignore: unused_field
  final $Res Function(Guess) _then;

  @override
  $Res call({
    Object? word = freezed,
    Object? match = freezed,
  }) {
    return _then(_value.copyWith(
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      match: match == freezed
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as List<LetterMatch>,
    ));
  }
}

/// @nodoc
abstract class _$$_GuessCopyWith<$Res> implements $GuessCopyWith<$Res> {
  factory _$$_GuessCopyWith(_$_Guess value, $Res Function(_$_Guess) then) =
      __$$_GuessCopyWithImpl<$Res>;
  @override
  $Res call({String word, List<LetterMatch> match});
}

/// @nodoc
class __$$_GuessCopyWithImpl<$Res> extends _$GuessCopyWithImpl<$Res>
    implements _$$_GuessCopyWith<$Res> {
  __$$_GuessCopyWithImpl(_$_Guess _value, $Res Function(_$_Guess) _then)
      : super(_value, (v) => _then(v as _$_Guess));

  @override
  _$_Guess get _value => super._value as _$_Guess;

  @override
  $Res call({
    Object? word = freezed,
    Object? match = freezed,
  }) {
    return _then(_$_Guess(
      word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      match == freezed
          ? _value._match
          : match // ignore: cast_nullable_to_non_nullable
              as List<LetterMatch>,
    ));
  }
}

/// @nodoc

class _$_Guess implements _Guess {
  _$_Guess(this.word, final List<LetterMatch> match) : _match = match;

  @override
  final String word;
  final List<LetterMatch> _match;
  @override
  List<LetterMatch> get match {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_match);
  }

  @override
  String toString() {
    return 'Guess(word: $word, match: $match)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Guess &&
            const DeepCollectionEquality().equals(other.word, word) &&
            const DeepCollectionEquality().equals(other._match, _match));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(word),
      const DeepCollectionEquality().hash(_match));

  @JsonKey(ignore: true)
  @override
  _$$_GuessCopyWith<_$_Guess> get copyWith =>
      __$$_GuessCopyWithImpl<_$_Guess>(this, _$identity);
}

abstract class _Guess implements Guess {
  factory _Guess(final String word, final List<LetterMatch> match) = _$_Guess;

  @override
  String get word => throw _privateConstructorUsedError;
  @override
  List<LetterMatch> get match => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GuessCopyWith<_$_Guess> get copyWith =>
      throw _privateConstructorUsedError;
}
