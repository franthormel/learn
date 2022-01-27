import 'package:auto_route/auto_route.dart';

import '../ui/navigation/navigation.dart';
import '../ui/passing_arguments/passing_arguments.dart';

import '../ui/display.dart';
import '../ui/limerick.dart';

import 'router.names.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: NavigationPage, initial: true, path: RouteNames.navigation),
    AutoRoute(page: PassingArgumentsPage, path: RouteNames.passingArguments),
    AutoRoute(page: DisplayPage, path: RouteNames.display),
    AutoRoute<int>(page: LimerickPage, path: RouteNames.limerick),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}
