import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wordle/wordle/domain/guess.dart';
import 'package:wordle/wordle/shared/providers.dart';

class WordleKeyboard extends ConsumerWidget {
  const WordleKeyboard({
    Key? key,
    required this.onKeyPress,
    required this.onBackSpacePress,
  }) : super(key: key);

  static const Map<String, List<List<String>>> keys = {
    'en': [
      ['q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p'],
      ['a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l'],
      ['z', 'x', 'c', 'v', 'b', 'n', 'm', '\b']
    ],
    'de': [
      ['q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p'],
      ['a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l'],
      ['z', 'x', 'c', 'v', 'b', 'n', 'm', '\b']
    ],
    'ru': [
      ['ё', 'й', 'ц', 'у', 'к', 'е', 'н', 'г', 'ш', 'щ', 'з', 'х', 'ъ'],
      ['ф', 'ы', 'в', 'а', 'п', 'р', 'о', 'л', 'д', 'ж', 'э'],
      ['я', 'ч', 'с', 'м', 'и', 'т', 'ь', 'б', 'ю', '\b']
    ]
  };

  final void Function(String text) onKeyPress;
  final VoidCallback onBackSpacePress;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final keyboardState = ref.watch(keyboardProvider);
    return AspectRatio(
      aspectRatio: 2,
      child: Container(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: keys['en']!.map((e) {
            return Flexible(
              child: Row(
                children: e.map((e) {
                  if (e == '\b') {
                    return KeyboardKey(
                      flex: 2,
                      value: const Icon(Icons.backspace_outlined),
                      onTab: onBackSpacePress,
                    );
                  }
                  final LetterMatch? match = keyboardState.letters[e];
                  final Color color = match == null
                      ? Theme.of(context).backgroundColor
                      : match == LetterMatch.wrongPosition
                          ? Colors.yellow
                          : match == LetterMatch.match
                              ? Colors.green
                              : Colors.grey;

                  return KeyboardKey(
                    flex: 2,
                    value: Text(e),
                    color: color,
                    onTab: () {
                      onKeyPress(e);
                    },
                  );
                }).toList(),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class KeyboardKey extends StatelessWidget {
  const KeyboardKey({
    Key? key,
    required this.value,
    required this.onTab,
    this.flex = 1,
    this.color,
  }) : super(key: key);

  final Widget value;
  final VoidCallback onTab;
  final int flex;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flex,
      child: InkWell(
        onTap: () {
          HapticFeedback.vibrate();
          onTab();
        },
        child: Container(
          // width: 20,
          //height: 60,
          margin: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: color ?? Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(),
          ),
          alignment: Alignment.center,
          child: value,
        ),
      ),
    );
  }
}
