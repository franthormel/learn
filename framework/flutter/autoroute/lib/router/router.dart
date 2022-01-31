import 'package:auto_route/auto_route.dart';

import '../ui/navigation/navigation.dart';
import '../ui/passing_arguments/passing_arguments.dart';

import '../ui/display.dart';
import '../ui/limerick.dart';
import '../ui/not_found.dart';

import 'router.names.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: NavigationPage, path: RoutePaths.navigation, initial: true),
    AutoRoute(page: PassingArgumentsPage, path: RoutePaths.arguments),
    AutoRoute(page: DisplayPage, path: RoutePaths.display),
    AutoRoute<int>(page: LimerickPage, path: RoutePaths.limerick),
    AutoRoute(path: '*', page: NotFoundPage),
  ],
)
class $AppRouter {}
