// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'keyboard_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$KeyboardState {
  Map<String, LetterMatch> get letters => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KeyboardStateCopyWith<KeyboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyboardStateCopyWith<$Res> {
  factory $KeyboardStateCopyWith(
          KeyboardState value, $Res Function(KeyboardState) then) =
      _$KeyboardStateCopyWithImpl<$Res>;
  $Res call({Map<String, LetterMatch> letters});
}

/// @nodoc
class _$KeyboardStateCopyWithImpl<$Res>
    implements $KeyboardStateCopyWith<$Res> {
  _$KeyboardStateCopyWithImpl(this._value, this._then);

  final KeyboardState _value;
  // ignore: unused_field
  final $Res Function(KeyboardState) _then;

  @override
  $Res call({
    Object? letters = freezed,
  }) {
    return _then(_value.copyWith(
      letters: letters == freezed
          ? _value.letters
          : letters // ignore: cast_nullable_to_non_nullable
              as Map<String, LetterMatch>,
    ));
  }
}

/// @nodoc
abstract class _$$_KeyboardStateCopyWith<$Res>
    implements $KeyboardStateCopyWith<$Res> {
  factory _$$_KeyboardStateCopyWith(
          _$_KeyboardState value, $Res Function(_$_KeyboardState) then) =
      __$$_KeyboardStateCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, LetterMatch> letters});
}

/// @nodoc
class __$$_KeyboardStateCopyWithImpl<$Res>
    extends _$KeyboardStateCopyWithImpl<$Res>
    implements _$$_KeyboardStateCopyWith<$Res> {
  __$$_KeyboardStateCopyWithImpl(
      _$_KeyboardState _value, $Res Function(_$_KeyboardState) _then)
      : super(_value, (v) => _then(v as _$_KeyboardState));

  @override
  _$_KeyboardState get _value => super._value as _$_KeyboardState;

  @override
  $Res call({
    Object? letters = freezed,
  }) {
    return _then(_$_KeyboardState(
      letters: letters == freezed
          ? _value._letters
          : letters // ignore: cast_nullable_to_non_nullable
              as Map<String, LetterMatch>,
    ));
  }
}

/// @nodoc

class _$_KeyboardState implements _KeyboardState {
  const _$_KeyboardState({final Map<String, LetterMatch> letters = const {}})
      : _letters = letters;

  final Map<String, LetterMatch> _letters;
  @override
  @JsonKey()
  Map<String, LetterMatch> get letters {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_letters);
  }

  @override
  String toString() {
    return 'KeyboardState(letters: $letters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KeyboardState &&
            const DeepCollectionEquality().equals(other._letters, _letters));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_letters));

  @JsonKey(ignore: true)
  @override
  _$$_KeyboardStateCopyWith<_$_KeyboardState> get copyWith =>
      __$$_KeyboardStateCopyWithImpl<_$_KeyboardState>(this, _$identity);
}

abstract class _KeyboardState implements KeyboardState {
  const factory _KeyboardState({final Map<String, LetterMatch> letters}) =
      _$_KeyboardState;

  @override
  Map<String, LetterMatch> get letters => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_KeyboardStateCopyWith<_$_KeyboardState> get copyWith =>
      throw _privateConstructorUsedError;
}
