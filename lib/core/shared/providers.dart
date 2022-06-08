import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wordle/core/infrastructure/shared_preferences_datasource.dart';

final sharedPreferencesDatasourceProvider =
    Provider<SharedPreferencesDatasource>((ref) {
  return SharedPreferencesDatasource();
});
