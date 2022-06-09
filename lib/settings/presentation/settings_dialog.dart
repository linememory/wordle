import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wordle/settings/shared/providers.dart';
import 'package:wordle/statistics/shared/providers.dart';

class SettingsDialog extends ConsumerWidget {
  const SettingsDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsProvider);
    return SimpleDialog(
      title: const Text("Settings"),
      children: [
        Row(
          children: [
            const Text("Language: "),
            DropdownButton<String>(
              value: settings.language,
              items: const [
                DropdownMenuItem(
                  value: 'en',
                  child: Text('English'),
                ),
                DropdownMenuItem(
                  value: 'de',
                  child: Text('Deutsch'),
                )
              ],
              onChanged: (value) {
                ref.read(settingsProvider.notifier).setLanguage(value ?? 'en');
              },
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () async {
            final bool? shouldReset = await showYesNoDialog(
              context,
              'Do you really want to reset the statistics?',
            );
            if (shouldReset ?? false) {
              ref.read(statisticsProvider.notifier).reset();
            }
          },
          child: const Text("Reset Statistics"),
        ),
      ],
    );
  }

  Future<bool?> showYesNoDialog(BuildContext context, String question) {
    return showDialog<bool>(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(question),
          actions: [
            ElevatedButton(
              child: const Text("Yes"),
              onPressed: () {
                Navigator.of(context, rootNavigator: true).pop(true);
              },
            ),
            ElevatedButton(
              child: const Text("No"),
              onPressed: () {
                Navigator.of(context, rootNavigator: true).pop(false);
              },
            ),
          ],
        );
      },
    );
  }
}
