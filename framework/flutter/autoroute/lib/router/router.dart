import 'package:auto_route/auto_route.dart';

import '../ui/ui.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true, path: '/'),
    AutoRoute(page: BooksPage),
    AutoRoute(page: BookDetailsPage),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}
