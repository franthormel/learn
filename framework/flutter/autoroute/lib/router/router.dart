import 'package:auto_route/auto_route.dart';

import '../ui/index.dart';
import 'router.constants.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    // Basic navigation
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
    // Nested routes
    // Wrapping routes
    // Declarative routing
    AutoRoute(
      name: RouteName.colors,
      path: RoutePath.colors,
      page: ColorsWrapperPage,
      children: [
        AutoRoute(
          name: RouteName.colorsAuthenticate,
          path: RoutePath.colorsAuthenticate,
          page: ColorsAuthenticatePage,
        ),
        AutoRoute(
          name: RouteName.colorsHome,
          path: RouteName.colorsHome,
          page: ColorsPage,
        ),
        RedirectRoute(path: '*', redirectTo: RouteName.colorsAuthenticate),
      ],
    ),
    // Bottom navigation bar
    AutoRoute(
      name: RouteName.bottomNavbarHome,
      page: BottomNavbarHomePage,
      path: RoutePath.bottomNavbarHome,
      children: [
        AutoRoute(
          name: RouteName.bottomNavbarTabAccount,
          page: BottomNavBarTabPage,
          path: RoutePath.bottomNavbarTabAccount,
        ),
        AutoRoute(
          name: RouteName.bottomNavbarTabSearch,
          page: BottomNavBarTabPage,
          path: RoutePath.bottomNavbarTabSearch,
        ),
        AutoRoute(
          name: RouteName.bottomNavbarTabSettings,
          page: BottomNavBarTabPage,
          path: RoutePath.bottomNavbarTabSettings,
        ),
      ],
    ),
    AutoRoute(path: '*', page: NotFoundPage),
  ],
)
class $AppRouter {}
