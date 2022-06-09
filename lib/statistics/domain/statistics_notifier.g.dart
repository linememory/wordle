// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'statistics_notifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatisticsState _$$_StatisticsStateFromJson(Map<String, dynamic> json) =>
    _$_StatisticsState(
      games: json['games'] as int? ?? 0,
      results:
          (json['results'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              const [0, 0, 0, 0, 0, 0, 0],
      streak: json['streak'] as int? ?? 0,
      longestStreak: json['longestStreak'] as int? ?? 0,
    );

Map<String, dynamic> _$$_StatisticsStateToJson(_$_StatisticsState instance) =>
    <String, dynamic>{
      'games': instance.games,
      'results': instance.results,
      'streak': instance.streak,
      'longestStreak': instance.longestStreak,
    };
