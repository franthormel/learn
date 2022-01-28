import 'package:auto_route/auto_route.dart';

import '../ui/navigation/navigation.dart';
import '../ui/passing_arguments/passing_arguments.dart';
import '../ui/page_transitions/index.dart';

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
    AutoRoute(page: TransitionsPage, path: RoutePaths.transitions),
    CustomRoute(
      page: SlideRightPage,
      path: RoutePaths.transitionSlideRight,
      transitionsBuilder: TransitionsBuilders.slideRight,
    ),
    CustomRoute(
      page: SlideLeftPage,
      path: RoutePaths.transitionSlideLeft,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: SlideRightFadePage,
      path: RoutePaths.transitionSlideRightFade,
      transitionsBuilder: TransitionsBuilders.slideRightWithFade,
    ),
    CustomRoute(
      page: SlideLeftFadePage,
      path: RoutePaths.transitionSlideRightFade,
      transitionsBuilder: TransitionsBuilders.slideRightWithFade,
    ),
    CustomRoute(
      page: SlideTopPage,
      path: RoutePaths.transitionSlideTop,
      transitionsBuilder: TransitionsBuilders.slideTop,
    ),
    CustomRoute(
      page: SlideBottomPage,
      path: RoutePaths.transitionSlideBottom,
      transitionsBuilder: TransitionsBuilders.slideBottom,
    ),
    CustomRoute(
      page: FadeInPage,
      path: RoutePaths.transitionFadeIn,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: ZoomInPage,
      path: RoutePaths.transitionZoomIn,
      transitionsBuilder: TransitionsBuilders.zoomIn,
    ),
    CustomRoute(
      page: NoTransitionPage,
      path: RoutePaths.transitionNone,
      transitionsBuilder: TransitionsBuilders.noTransition,
    ),
    AutoRoute(path: '*', page: NotFoundPage),
  ],
)
class $AppRouter {}
