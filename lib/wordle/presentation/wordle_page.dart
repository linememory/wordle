import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wordle/core/presentation/routes/app_router.gr.dart';
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
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  "Wordle",
                  style: Theme.of(context).textTheme.headline2,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Game(),
              ],
            ),
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
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: wordle.map(
          initial: (value) {
            ref.read(wordleProvider.notifier).startGame();
            return [const CircularProgressIndicator()];
          },
          game: (value) {
            if (value.invalidGuess) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      "not a valid word",
                    ),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              });
            }
            return [
              Guesses(value.guesses),
              WordleKeyboard(
                onKeyPress: (text) {
                  ref.read(wordleProvider.notifier).inputLetter(text);
                },
                onBackSpacePress: () {
                  ref.read(wordleProvider.notifier).removeLetter();
                },
                onReturnPress: () {
                  ref.read(wordleProvider.notifier).submitGuess();
                },
              ),
            ];
          },
          gameOver: (value) {
            return [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "GameOver",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      value.hasGuessed
                          ? "You Guessed it!"
                          : "Too bad...\n you didn't guess the word.",
                      style: Theme.of(context).textTheme.headline5,
                      textAlign: TextAlign.center,
                    ),
                  ),
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
                  Guesses(value.guesses),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  ref.read(wordleProvider.notifier).startGame();
                },
                child: const Text('Play Again!'),
              ),
            ];
          },
          failure: (value) {
            return [
              Text('Failure: ${value.errorMessage}'),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  ref.read(wordleProvider.notifier).startGame();
                },
                child: const Text('Try Again!'),
              ),
            ];
          },
        ),
      ),
    );
  }
}

class Guesses extends StatelessWidget {
  const Guesses(this.guesses, {Key? key}) : super(key: key);
  final List<Guess> guesses;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: guesses.map((e) {
        return Column(
          children: [
            GuessWidget(guess: e),
            const SizedBox(
              height: 4,
            )
          ],
        );
      }).toList(),
    );
  }
}

class GuessInput extends ConsumerStatefulWidget {
  const GuessInput({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GuessInputState();
}

class _GuessInputState extends ConsumerState<GuessInput> {
  TextEditingController controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            autofocus: true,
            validator: (value) {
              if (value == null) {
              } else if (value.length != 5) {
                return 'Only 5 letters allowed';
              } else if (!RegExp(r'^[A-Za-z]+$').hasMatch(value)) {
                return 'Only letters allowed';
              }
              return null;
            },
            controller: controller,
            onChanged: (value) {
              if (value.length >= 5) {
                controller.text = controller.text.substring(0, 5);
                controller.selection =
                    const TextSelection(baseOffset: 5, extentOffset: 5);
              }
            },
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ref.read(wordleProvider.notifier).submitGuess();
                controller.clear();
              }
            },
            child: const Text("Guess"),
          ),
        ],
      ),
    );
  }
}
