import 'package:flutter/material.dart';
import 'package:wordle/wordle/domain/guess.dart';

class GuessWidget extends StatelessWidget {
  const GuessWidget({
    Key? key,
    required this.guess,
    required this.isInvalid,
    required this.isSubmitted,
  }) : super(key: key);

  final Guess guess;

  final bool isInvalid;
  final bool isSubmitted;

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = [];
    for (var i = 0; i < guess.match.length; i++) {
      children.add(
        Expanded(
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              alignment: Alignment.center,
              //width: 50,
              height: 100,
              color: isSubmitted ? Colors.grey.shade600 : Colors.grey.shade800,
              child: Text(
                guess.word.length > i ? guess.word[i].toUpperCase() : "",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: isInvalid
                      ? Colors.red
                      : guess.match[i] == LetterMatch.match
                          ? Colors.green
                          : guess.match[i] == LetterMatch.wrongPosition
                              ? Colors.yellow
                              : Colors.grey,
                ),
              ),
            ),
          ),
        ),
      );
      children.add(
        const SizedBox(
          width: 2,
        ),
      );
    }

    if (children.isNotEmpty) children.removeLast();
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: children,
    );
  }
}
