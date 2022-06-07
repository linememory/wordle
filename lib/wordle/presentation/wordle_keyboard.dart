import 'package:flutter/material.dart';

class WordleKeyboard extends StatelessWidget {
  const WordleKeyboard({
    Key? key,
    required this.onKeyPress,
    required this.onBackSpacePress,
    required this.onReturnPress,
  }) : super(key: key);

  static const List<List<String>> keys = [
    ['q', 'w', 'e', 'r', 't', 'z', 'u', 'i', 'o', 'p'],
    ['a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l'],
    ['\r', 'y', 'x', 'c', 'v', 'b', 'n', 'm', '\b']
  ];

  final void Function(String text) onKeyPress;
  final VoidCallback onBackSpacePress;
  final VoidCallback onReturnPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: keys.map((e) {
          return Row(
            children: e.map((e) {
              if (e == '\b') {
                return KeyboardKey(
                  flex: 2,
                  value: const Icon(Icons.backspace_outlined),
                  onTab: onBackSpacePress,
                );
              }
              if (e == '\r') {
                return KeyboardKey(
                  flex: 3,
                  value: const Icon(Icons.keyboard_return_outlined),
                  onTab: onReturnPress,
                );
              }
              return KeyboardKey(
                flex: 2,
                value: Text(e),
                onTab: () {
                  onKeyPress(e);
                },
              );
            }).toList(),
          );
        }).toList(),
      ),
    );
  }
}

class KeyboardKey extends StatelessWidget {
  const KeyboardKey(
      {Key? key, required this.value, required this.onTab, this.flex = 1})
      : super(key: key);

  final Widget value;
  final VoidCallback onTab;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flex,
      child: InkWell(
        onTap: onTab,
        child: Container(
          // width: 20,
          height: 60,
          margin: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
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
