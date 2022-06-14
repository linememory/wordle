import 'package:dartz/dartz.dart';
import 'package:wordle/wordle/domain/failure.dart';
import 'package:wordle/wordle/infrastructure/words_datasource.dart';

class WordsRepository {
  final WordsDatasource wordsDataSource;

  WordsRepository(this.wordsDataSource);

  Future<Either<Failure, String>> getRandomWord() async {
    return right(await wordsDataSource.getRandomWord());
  }
}
