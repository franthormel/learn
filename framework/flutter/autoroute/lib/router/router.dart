import 'package:auto_route/auto_route.dart';


import '../ui/navigation/index.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: NavigationPage, initial: true, path: '/'),
    AutoRoute(page: DisplayPage),
    AutoRoute(page: LimerickPage, path: '/limerick'),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}
