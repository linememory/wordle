import 'package:flutter/material.dart';

import 'package:wordle/core/presentation/routes/app_router.gr.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();

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
