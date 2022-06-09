// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'statistics_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatisticsState _$StatisticsStateFromJson(Map<String, dynamic> json) {
  return _StatisticsState.fromJson(json);
}

/// @nodoc
mixin _$StatisticsState {
  int get games => throw _privateConstructorUsedError;
  List<int> get results => throw _privateConstructorUsedError;
  int get streak => throw _privateConstructorUsedError;
  int get longestStreak => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticsStateCopyWith<StatisticsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsStateCopyWith<$Res> {
  factory $StatisticsStateCopyWith(
          StatisticsState value, $Res Function(StatisticsState) then) =
      _$StatisticsStateCopyWithImpl<$Res>;
  $Res call({int games, List<int> results, int streak, int longestStreak});
}

/// @nodoc
class _$StatisticsStateCopyWithImpl<$Res>
    implements $StatisticsStateCopyWith<$Res> {
  _$StatisticsStateCopyWithImpl(this._value, this._then);

  final StatisticsState _value;
  // ignore: unused_field
  final $Res Function(StatisticsState) _then;

  @override
  $Res call({
    Object? games = freezed,
    Object? results = freezed,
    Object? streak = freezed,
    Object? longestStreak = freezed,
  }) {
    return _then(_value.copyWith(
      games: games == freezed
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<int>,
      streak: streak == freezed
          ? _value.streak
          : streak // ignore: cast_nullable_to_non_nullable
              as int,
      longestStreak: longestStreak == freezed
          ? _value.longestStreak
          : longestStreak // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_StatisticsStateCopyWith<$Res>
    implements $StatisticsStateCopyWith<$Res> {
  factory _$$_StatisticsStateCopyWith(
          _$_StatisticsState value, $Res Function(_$_StatisticsState) then) =
      __$$_StatisticsStateCopyWithImpl<$Res>;
  @override
  $Res call({int games, List<int> results, int streak, int longestStreak});
}

/// @nodoc
class __$$_StatisticsStateCopyWithImpl<$Res>
    extends _$StatisticsStateCopyWithImpl<$Res>
    implements _$$_StatisticsStateCopyWith<$Res> {
  __$$_StatisticsStateCopyWithImpl(
      _$_StatisticsState _value, $Res Function(_$_StatisticsState) _then)
      : super(_value, (v) => _then(v as _$_StatisticsState));

  @override
  _$_StatisticsState get _value => super._value as _$_StatisticsState;

  @override
  $Res call({
    Object? games = freezed,
    Object? results = freezed,
    Object? streak = freezed,
    Object? longestStreak = freezed,
  }) {
    return _then(_$_StatisticsState(
      games: games == freezed
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<int>,
      streak: streak == freezed
          ? _value.streak
          : streak // ignore: cast_nullable_to_non_nullable
              as int,
      longestStreak: longestStreak == freezed
          ? _value.longestStreak
          : longestStreak // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatisticsState implements _StatisticsState {
  const _$_StatisticsState(
      {this.games = 0,
      final List<int> results = const [0, 0, 0, 0, 0, 0, 0],
      this.streak = 0,
      this.longestStreak = 0})
      : _results = results;

  factory _$_StatisticsState.fromJson(Map<String, dynamic> json) =>
      _$$_StatisticsStateFromJson(json);

  @override
  @JsonKey()
  final int games;
  final List<int> _results;
  @override
  @JsonKey()
  List<int> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey()
  final int streak;
  @override
  @JsonKey()
  final int longestStreak;

  @override
  String toString() {
    return 'StatisticsState(games: $games, results: $results, streak: $streak, longestStreak: $longestStreak)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatisticsState &&
            const DeepCollectionEquality().equals(other.games, games) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            const DeepCollectionEquality().equals(other.streak, streak) &&
            const DeepCollectionEquality()
                .equals(other.longestStreak, longestStreak));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(games),
      const DeepCollectionEquality().hash(_results),
      const DeepCollectionEquality().hash(streak),
      const DeepCollectionEquality().hash(longestStreak));

  @JsonKey(ignore: true)
  @override
  _$$_StatisticsStateCopyWith<_$_StatisticsState> get copyWith =>
      __$$_StatisticsStateCopyWithImpl<_$_StatisticsState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatisticsStateToJson(this);
  }
}

abstract class _StatisticsState implements StatisticsState {
  const factory _StatisticsState(
      {final int games,
      final List<int> results,
      final int streak,
      final int longestStreak}) = _$_StatisticsState;

  factory _StatisticsState.fromJson(Map<String, dynamic> json) =
      _$_StatisticsState.fromJson;

  @override
  int get games => throw _privateConstructorUsedError;
  @override
  List<int> get results => throw _privateConstructorUsedError;
  @override
  int get streak => throw _privateConstructorUsedError;
  @override
  int get longestStreak => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_StatisticsStateCopyWith<_$_StatisticsState> get copyWith =>
      throw _privateConstructorUsedError;
}
