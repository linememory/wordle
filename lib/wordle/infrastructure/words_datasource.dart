import 'dart:convert';
import 'dart:math';
import 'package:flutter/services.dart';

abstract class WordsDatasource {
  Future<String> getRandomWord();
}

class JsonWordsDatasource implements WordsDatasource {
  List<dynamic>? cachedWords;

  final String assetPath;

  JsonWordsDatasource(this.assetPath);

  @override
  Future<String> getRandomWord() async {
    final String rawData = await rootBundle.loadString(assetPath);
    final List<dynamic> words =
        cachedWords ?? jsonDecode(rawData) as List<dynamic>;
    cachedWords = words;
    final int rnd = Random().nextInt(words.length);
    return Future.value(words[rnd].toString());
  }
}
