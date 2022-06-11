import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wordle/generated/l10n.dart';
import 'package:wordle/settings/shared/providers.dart';
import 'package:wordle/statistics/shared/providers.dart';

class SettingsDialog extends ConsumerWidget {
  const SettingsDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsProvider);
    return SimpleDialog(
      title: Text(S.of(context).settings),
      contentPadding: const EdgeInsets.all(16),
      children: [
        Row(
          children: [
            Text(S.of(context).language),
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
                ),
                DropdownMenuItem(
                  value: 'it',
                  child: Text('Italiano'),
                ),
                DropdownMenuItem(
                  value: 'ru',
                  child: Text('Русский'),
                ),
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
              S.of(context).resetStatisticsQuestion,
            );
            if (shouldReset ?? false) {
              ref.read(statisticsProvider.notifier).reset();
            }
          },
          child: Text(S.of(context).resetStatistics),
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
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            ElevatedButton(
              child: Text(S.of(context).yes),
              onPressed: () {
                Navigator.of(context, rootNavigator: true).pop(true);
              },
            ),
            ElevatedButton(
              child: Text(S.of(context).no),
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
