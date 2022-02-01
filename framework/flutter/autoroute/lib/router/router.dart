import 'package:auto_route/auto_route.dart';

import '../ui/index.dart';
import 'router.constants.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      name: RouteName.navigation,
      page: NavigationPage,
      path: RoutePath.navigation,
    ),
    AutoRoute(
      name: RouteName.display,
      page: DisplayPage,
      path: RoutePath.display,
    ),
    AutoRoute<int>(
      name: RouteName.limerick,
      page: LimerickPage,
      path: RoutePath.limerick,
    ),
    AutoRoute(
      name: RouteName.colorsWrapper,
      path: RoutePath.colorsWrapper,
      page: ColorsWrapperPage,
      children: [
        AutoRoute(
          name: RouteName.colorsAuthenticate,
          path: RoutePath.colorsAuthenticate,
          page: ColorsAuthenticatePage,
        ),
        AutoRoute(
          name: RouteName.colorsList,
          path: RouteName.colorsList,
          page: ColorsListPage,
        ),
        RedirectRoute(path: '*', redirectTo: RouteName.colorsAuthenticate),
      ],
    ),
    AutoRoute(path: '*', page: NotFoundPage),
  ],
)
class $AppRouter {}
