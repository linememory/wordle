import 'package:wordle/core/infrastructure/shared_preferences_datasource.dart';
import 'package:wordle/statistics/domain/statistics_notifier.dart';

class StatisticsRepository {
  final SharedPreferencesDatasource _sharedPreferencesDatasource;

  StatisticsRepository(this._sharedPreferencesDatasource);

  static const String sharedPrefKey = 'statistics';

  void reset() {
    _sharedPreferencesDatasource.remove(sharedPrefKey);
  }

  void save(StatisticsState statistics) {
    _sharedPreferencesDatasource.save(sharedPrefKey, statistics.toJson());
  }

  Future<StatisticsState> load() async {
    return StatisticsState.fromJson(
      await _sharedPreferencesDatasource.load(sharedPrefKey),
    );
  }
}
