import 'package:wordle/wordle/infrastructure/dictionary_datasource.dart';

class DictionaryRepository {
  final DictionaryDatasource dictionaryDataSource;

  DictionaryRepository(this.dictionaryDataSource);

  Future<bool> isValid(String wordToCheck) async {
    return dictionaryDataSource.isValid(wordToCheck);
  }
}
