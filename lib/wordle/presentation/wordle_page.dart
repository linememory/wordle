import 'package:auto_route/auto_route.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wordle/core/presentation/routes/app_router.gr.dart';
import 'package:wordle/generated/l10n.dart';
import 'package:wordle/settings/presentation/settings_dialog.dart';
import 'package:wordle/wordle/domain/guess.dart';
import 'package:wordle/wordle/presentation/guess_widget.dart';
import 'package:wordle/wordle/presentation/wordle_keyboard.dart';
import 'package:wordle/wordle/shared/providers.dart';

class WordlePage extends ConsumerWidget {
  const WordlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).title,
          style: Theme.of(context).textTheme.headline3,
        ),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return const SettingsDialog();
                },
              );
            },
            icon: const Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              AutoRouter.of(context).push(const StatisticsRoute());
            },
            icon: const Icon(Icons.bar_chart_outlined),
          ),
        ],
      ),
      body: const SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Game(),
          ),
        ),
      ),
    );
  }
}

class Game extends ConsumerWidget {
  const Game({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wordle = ref.watch(wordleProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: wordle.map(
        initial: (value) {
          ref.read(wordleProvider.notifier).startGame();
          return [const CircularProgressIndicator()];
        },
        game: (value) {
          return [
            Text(
              S.of(context).gameTip,
              style: Theme.of(context).textTheme.headline4,
            ),
            Expanded(
              flex: 2,
              child: Guesses(value.guesses),
            ),
            Expanded(
              child: WordleKeyboard(
                onKeyPress: (text) {
                  ref.read(wordleProvider.notifier).inputLetter(text);
                },
                onBackSpacePress: () {
                  ref.read(wordleProvider.notifier).removeLetter();
                },
              ),
            ),
          ];
        },
        gameOver: (value) {
          return [
            Expanded(
              child: Column(
                children: [
                  ...value.hasGuessed
                      ? [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              S.of(context).guessed,
                              style: Theme.of(context).textTheme.headline5,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ]
                      : [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              S.of(context).gameOver,
                              style: Theme.of(context).textTheme.headline4,
                            ),
                          ),
                        ],
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      value.word.toUpperCase(),
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(color: Colors.green),
                    ),
                  ),
                  Expanded(child: Guesses(value.guesses)),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(wordleProvider.notifier).startGame();
              },
              child: Text(S.of(context).playAgain),
            ),
          ];
        },
        failure: (value) {
          return [
            Text('${S.of(context).failure}: ${value.errorMessage}'),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(wordleProvider.notifier).startGame();
              },
              child: Text(S.of(context).tryAgain),
            ),
          ];
        },
      ),
    );
  }
}

class Guesses extends ConsumerWidget {
  const Guesses(this.guesses, {Key? key}) : super(key: key);
  final List<Guess> guesses;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<List<GlobalKey<FlipCardState>>> keys =
        ref.watch(flipCardKeysProvider);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: guesses
            .asMap()
            .map(
              (key, value) {
                return MapEntry(
                  key,
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: GuessWidget(
                        flipCardKeys: keys[key],
                        guess: value,
                        isInvalid: value.isInvalid,
                        isSubmitted: value.isSubmitted,
                      ),
                    ),
                  ),
                );
              },
            )
            .values
            .toList(),
      ),
    );
  }
}
