import 'dart:convert';

import 'package:flutter/services.dart';

abstract class DictionaryDatasource {
  Future<bool> isValid(String wordToCheck);
}

class FileDictionaryDatasource implements DictionaryDatasource {
  List<String>? cachedWords;

  final String assetPath;

  FileDictionaryDatasource(this.assetPath);

  @override
  Future<bool> isValid(String wordToCheck) async {
    final words = cachedWords ??
        await rootBundle.loadStructuredData(
          assetPath,
          (value) async {
            return const LineSplitter().convert(value);
          },
        );
    words!.removeWhere((word) => word.length != 5);
    cachedWords = words;
    return cachedWords!.contains(wordToCheck);
  }
}
