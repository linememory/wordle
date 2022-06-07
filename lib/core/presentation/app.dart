import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:wordle/core/presentation/routes/app_router.gr.dart';
import 'package:wordle/settings/shared/providers.dart';

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _appRouter = AppRouter();
    ref.read(settingsProvider.notifier).loadSettings();
    _appRouter.pushAndPopUntil(
      const WordleRoute(),
      predicate: (route) => false,
    );
    return MaterialApp.router(
      theme: ThemeData.dark(),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
