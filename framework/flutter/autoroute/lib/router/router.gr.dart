// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../ui/display.dart' as _i3;
import '../ui/limerick.dart' as _i4;
import '../ui/navigation/navigation.dart' as _i1;
import '../ui/not_found.dart' as _i6;
import '../ui/page_transitions/index.dart' as _i5;
import '../ui/passing_arguments/passing_arguments.dart' as _i2;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    NavigationRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.NavigationPage());
    },
    PassingArgumentsRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.PassingArgumentsPage());
    },
    DisplayRoute.name: (routeData) {
      final args = routeData.argsAs<DisplayRouteArgs>(
          orElse: () => const DisplayRouteArgs());
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.DisplayPage(
              title: args.title,
              text: args.text,
              color: args.color,
              delayedCallback: args.delayedCallback,
              key: args.key));
    },
    LimerickRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<LimerickRouteArgs>(
          orElse: () =>
              LimerickRouteArgs(index: pathParams.optInt('limerickIndex')));
      return _i7.MaterialPageX<int>(
          routeData: routeData,
          child: _i4.LimerickPage(index: args.index, key: args.key));
    },
    TransitionsRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.TransitionsPage());
    },
    SlideRightRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.SlideRightPage(),
          transitionsBuilder: _i7.TransitionsBuilders.slideRight,
          opaque: true,
          barrierDismissible: false);
    },
    SlideLeftRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.SlideLeftPage(),
          transitionsBuilder: _i7.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    SlideRightFadeRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.SlideRightFadePage(),
          transitionsBuilder: _i7.TransitionsBuilders.slideRightWithFade,
          opaque: true,
          barrierDismissible: false);
    },
    SlideLeftFadeRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.SlideLeftFadePage(),
          transitionsBuilder: _i7.TransitionsBuilders.slideRightWithFade,
          opaque: true,
          barrierDismissible: false);
    },
    SlideTopRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.SlideTopPage(),
          transitionsBuilder: _i7.TransitionsBuilders.slideTop,
          opaque: true,
          barrierDismissible: false);
    },
    SlideBottomRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.SlideBottomPage(),
          transitionsBuilder: _i7.TransitionsBuilders.slideBottom,
          opaque: true,
          barrierDismissible: false);
    },
    FadeInRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.FadeInPage(),
          transitionsBuilder: _i7.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    ZoomInRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.ZoomInPage(),
          transitionsBuilder: _i7.TransitionsBuilders.zoomIn,
          opaque: true,
          barrierDismissible: false);
    },
    NoTransitionRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.NoTransitionPage(),
          transitionsBuilder: _i7.TransitionsBuilders.noTransition,
          opaque: true,
          barrierDismissible: false);
    },
    NotFoundRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.NotFoundPage());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(NavigationRoute.name, path: '/'),
        _i7.RouteConfig(PassingArgumentsRoute.name, path: '/arguments'),
        _i7.RouteConfig(DisplayRoute.name, path: '/display'),
        _i7.RouteConfig(LimerickRoute.name, path: '/limerick'),
        _i7.RouteConfig(TransitionsRoute.name, path: '/transitions'),
        _i7.RouteConfig(SlideRightRoute.name, path: '/transitions-slide-right'),
        _i7.RouteConfig(SlideLeftRoute.name, path: '/transitions-slide-left'),
        _i7.RouteConfig(SlideRightFadeRoute.name,
            path: '/transitions-slide-right-fade'),
        _i7.RouteConfig(SlideLeftFadeRoute.name,
            path: '/transitions-slide-right-fade'),
        _i7.RouteConfig(SlideTopRoute.name, path: '/transitions-slide-top'),
        _i7.RouteConfig(SlideBottomRoute.name,
            path: '/transitions-slide-bottom'),
        _i7.RouteConfig(FadeInRoute.name, path: '/transitions-fade-in'),
        _i7.RouteConfig(ZoomInRoute.name, path: '/transitions-zoom-in'),
        _i7.RouteConfig(NoTransitionRoute.name, path: '/transitions-none'),
        _i7.RouteConfig(NotFoundRoute.name, path: '*')
      ];
}

/// generated route for
/// [_i1.NavigationPage]
class NavigationRoute extends _i7.PageRouteInfo<void> {
  const NavigationRoute() : super(NavigationRoute.name, path: '/');

  static const String name = 'NavigationRoute';
}

/// generated route for
/// [_i2.PassingArgumentsPage]
class PassingArgumentsRoute extends _i7.PageRouteInfo<void> {
  const PassingArgumentsRoute()
      : super(PassingArgumentsRoute.name, path: '/arguments');

  static const String name = 'PassingArgumentsRoute';
}

/// generated route for
/// [_i3.DisplayPage]
class DisplayRoute extends _i7.PageRouteInfo<DisplayRouteArgs> {
  DisplayRoute(
      {String? title,
      String? text,
      _i8.Color? color,
      void Function()? delayedCallback,
      _i8.Key? key})
      : super(DisplayRoute.name,
            path: '/display',
            args: DisplayRouteArgs(
                title: title,
                text: text,
                color: color,
                delayedCallback: delayedCallback,
                key: key));

  static const String name = 'DisplayRoute';
}

class DisplayRouteArgs {
  const DisplayRouteArgs(
      {this.title, this.text, this.color, this.delayedCallback, this.key});

  final String? title;

  final String? text;

  final _i8.Color? color;

  final void Function()? delayedCallback;

  final _i8.Key? key;

  @override
  String toString() {
    return 'DisplayRouteArgs{title: $title, text: $text, color: $color, delayedCallback: $delayedCallback, key: $key}';
  }
}

/// generated route for
/// [_i4.LimerickPage]
class LimerickRoute extends _i7.PageRouteInfo<LimerickRouteArgs> {
  LimerickRoute({int? index, _i8.Key? key})
      : super(LimerickRoute.name,
            path: '/limerick',
            args: LimerickRouteArgs(index: index, key: key),
            rawPathParams: {'limerickIndex': index});

  static const String name = 'LimerickRoute';
}

class LimerickRouteArgs {
  const LimerickRouteArgs({this.index, this.key});

  final int? index;

  final _i8.Key? key;

  @override
  String toString() {
    return 'LimerickRouteArgs{index: $index, key: $key}';
  }
}

/// generated route for
/// [_i5.TransitionsPage]
class TransitionsRoute extends _i7.PageRouteInfo<void> {
  const TransitionsRoute() : super(TransitionsRoute.name, path: '/transitions');

  static const String name = 'TransitionsRoute';
}

/// generated route for
/// [_i5.SlideRightPage]
class SlideRightRoute extends _i7.PageRouteInfo<void> {
  const SlideRightRoute()
      : super(SlideRightRoute.name, path: '/transitions-slide-right');

  static const String name = 'SlideRightRoute';
}

/// generated route for
/// [_i5.SlideLeftPage]
class SlideLeftRoute extends _i7.PageRouteInfo<void> {
  const SlideLeftRoute()
      : super(SlideLeftRoute.name, path: '/transitions-slide-left');

  static const String name = 'SlideLeftRoute';
}

/// generated route for
/// [_i5.SlideRightFadePage]
class SlideRightFadeRoute extends _i7.PageRouteInfo<void> {
  const SlideRightFadeRoute()
      : super(SlideRightFadeRoute.name, path: '/transitions-slide-right-fade');

  static const String name = 'SlideRightFadeRoute';
}

/// generated route for
/// [_i5.SlideLeftFadePage]
class SlideLeftFadeRoute extends _i7.PageRouteInfo<void> {
  const SlideLeftFadeRoute()
      : super(SlideLeftFadeRoute.name, path: '/transitions-slide-right-fade');

  static const String name = 'SlideLeftFadeRoute';
}

/// generated route for
/// [_i5.SlideTopPage]
class SlideTopRoute extends _i7.PageRouteInfo<void> {
  const SlideTopRoute()
      : super(SlideTopRoute.name, path: '/transitions-slide-top');

  static const String name = 'SlideTopRoute';
}

/// generated route for
/// [_i5.SlideBottomPage]
class SlideBottomRoute extends _i7.PageRouteInfo<void> {
  const SlideBottomRoute()
      : super(SlideBottomRoute.name, path: '/transitions-slide-bottom');

  static const String name = 'SlideBottomRoute';
}

/// generated route for
/// [_i5.FadeInPage]
class FadeInRoute extends _i7.PageRouteInfo<void> {
  const FadeInRoute() : super(FadeInRoute.name, path: '/transitions-fade-in');

  static const String name = 'FadeInRoute';
}

/// generated route for
/// [_i5.ZoomInPage]
class ZoomInRoute extends _i7.PageRouteInfo<void> {
  const ZoomInRoute() : super(ZoomInRoute.name, path: '/transitions-zoom-in');

  static const String name = 'ZoomInRoute';
}

/// generated route for
/// [_i5.NoTransitionPage]
class NoTransitionRoute extends _i7.PageRouteInfo<void> {
  const NoTransitionRoute()
      : super(NoTransitionRoute.name, path: '/transitions-none');

  static const String name = 'NoTransitionRoute';
}

/// generated route for
/// [_i6.NotFoundPage]
class NotFoundRoute extends _i7.PageRouteInfo<void> {
  const NotFoundRoute() : super(NotFoundRoute.name, path: '*');

  static const String name = 'NotFoundRoute';
}
