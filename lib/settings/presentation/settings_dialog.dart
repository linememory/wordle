import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wordle/settings/shared/providers.dart';

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
        )
      ],
    );
  }
}
