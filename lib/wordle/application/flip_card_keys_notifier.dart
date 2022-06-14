import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FlipCardKeysNotifier
    extends StateNotifier<List<List<GlobalKey<FlipCardState>>>> {
  FlipCardKeysNotifier()
      : super(
          List.generate(
            6,
            (index) => List.generate(
              6,
              (index) => GlobalKey<FlipCardState>(),
            ),
          ),
        );

  Future<void> flipGuess(int index) async {
    for (final GlobalKey<FlipCardState> element in state[index]) {
      element.currentState?.toggleCard();
      await Future.delayed(const Duration(milliseconds: 100));
    }
  }

  void clear() {
    state = List.generate(
      6,
      (index) => List.generate(
        6,
        (index) => GlobalKey<FlipCardState>(),
      ),
    );
  }
}
