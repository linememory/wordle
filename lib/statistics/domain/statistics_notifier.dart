import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wordle/statistics/infrastructure/statistics_repository.dart';

part 'statistics_notifier.freezed.dart';
part 'statistics_notifier.g.dart';

class StatisticsNotifier extends StateNotifier<StatisticsState> {
  StatisticsNotifier(this._statisticsRepository)
      : super(const StatisticsState());

  final StatisticsRepository _statisticsRepository;

  Future<void> loadStatistics() async {
    state = await _statisticsRepository.load();
  }

  Future<void> addGame(int tries) async {
    final int index = tries.clamp(0, 6);
    final int currentStreak =
        tries < state.results.length - 1 ? state.streak + 1 : 0;
    state = state.copyWith(
      games: state.games + 1,
      results: List.from(state.results)..[index] = state.results[index] + 1,
      streak: currentStreak,
      longestStreak: currentStreak >= state.longestStreak
          ? currentStreak
          : state.longestStreak,
    );
    _statisticsRepository.save(state);
  }

  Future<void> reset() async {
    state = const StatisticsState();
    _statisticsRepository.reset();
  }
}

@freezed
class StatisticsState with _$StatisticsState {
  const factory StatisticsState({
    @Default(0) int games,
    @Default([0, 0, 0, 0, 0, 0, 0]) List<int> results,
    @Default(0) int streak,
    @Default(0) int longestStreak,
  }) = _StatisticsState;

  factory StatisticsState.fromJson(Map<String, Object?> json) =>
      _$StatisticsStateFromJson(json);
}
