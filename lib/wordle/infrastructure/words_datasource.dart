import 'dart:math';
import 'package:flutter/services.dart';

abstract class WordsDatasource {
  Future<String> getRandomWord();
}

class FileWordsDatasource implements WordsDatasource {
  List<String>? cachedWords;

  final String assetPath;

  FileWordsDatasource(this.assetPath);

  @override
  Future<String> getRandomWord() async {
    final words = cachedWords ??
        await rootBundle.loadStructuredData(
          assetPath,
          (value) async => value.split(','),
        );
    words!.removeWhere((word) => word.length != 5);
    cachedWords = words;
    final int rnd = Random().nextInt(words.length);
    return Future.value(words[rnd]);
  }
}
