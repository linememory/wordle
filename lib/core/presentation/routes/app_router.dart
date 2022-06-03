import 'package:auto_route/auto_route.dart';
import 'package:wordle/wordle/presentation/wordle_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: WordlePage, initial: true),
  ],
)
class $AppRouter {}
