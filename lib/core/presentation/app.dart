import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wordle/core/presentation/routes/app_router.gr.dart';
import 'package:wordle/generated/l10n.dart';
import 'package:wordle/settings/domain/settings_notifier.dart';
import 'package:wordle/settings/shared/providers.dart';
import 'package:wordle/statistics/shared/providers.dart';

final appRouterProvider = Provider<AppRouter>((ref) {
  return AppRouter();
});

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(settingsProvider.notifier).loadSettings();
    ref.read(statisticsProvider.notifier).loadStatistics();
    final AppRouter appRouter = ref.watch(appRouterProvider);
    final SettingsState settings = ref.watch(settingsProvider);

    return MaterialApp.router(
      theme: ThemeData.dark(),
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      locale: settings.language,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
