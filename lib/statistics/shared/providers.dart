import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wordle/core/shared/providers.dart';
import 'package:wordle/statistics/domain/statistics_notifier.dart';
import 'package:wordle/statistics/infrastructure/statistics_repository.dart';

final statisticsRepositoryProvider = Provider<StatisticsRepository>((ref) {
  return StatisticsRepository(ref.watch(sharedPreferencesDatasourceProvider));
});

final statisticsProvider =
    StateNotifierProvider<StatisticsNotifier, StatisticsState>((ref) {
  return StatisticsNotifier(ref.watch(statisticsRepositoryProvider));
});
