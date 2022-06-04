import 'package:flutter/material.dart';
import 'package:wordle/wordle/domain/guess.dart';

class GuessWidget extends StatelessWidget {
  const GuessWidget({
    Key? key,
    required this.guess,
  }) : super(key: key);

  final Guess guess;

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = [];
    for (var i = 0; i < guess.word.length; i++) {
      children.add(
        Container(
          alignment: Alignment.center,
          width: 50,
          height: 50,
          color: Colors.grey.shade600,
          child: Text(
            guess.word[i].toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: guess.match[i] == Match.match
                  ? Colors.green
                  : guess.match[i] == Match.wrongPosition
                      ? Colors.yellow
                      : Colors.grey,
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
    children.removeLast();
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: children,
    );
  }
}
