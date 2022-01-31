import 'package:auto_route/auto_route.dart';

import '../ui/navigation/navigation.dart';

import '../ui/display.dart';
import '../ui/limerick.dart';
import '../ui/not_found.dart';

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
    // AutoRoute(
    //   name: RouteName.books,
    //   path: RoutePath.books,
    //   page: EmptyRouterPage,
    //   children: [
    //     AutoRoute(path: '', page: BooksPage),
    //     AutoRoute(
    //       name: RouteName.booksDetails,
    //       path: RoutePath.bookId,
    //       page: BookDetailsPage,
    //     ),
    //   ],
    // ),
    AutoRoute(path: '*', page: NotFoundPage),
  ],
)
class $AppRouter {}
