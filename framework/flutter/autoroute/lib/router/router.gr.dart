// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../ui/display.dart' as _i2;
import '../ui/limerick.dart' as _i3;
import '../ui/navigation/navigation.dart' as _i1;
import '../ui/not_found.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    NavigationRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.NavigationPage());
    },
    DisplayRouter.name: (routeData) {
      final args = routeData.argsAs<DisplayRouterArgs>(
          orElse: () => const DisplayRouterArgs());
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.DisplayPage(
              title: args.title,
              text: args.text,
              color: args.color,
              delayedCallback: args.delayedCallback,
              key: args.key));
    },
    LimerickRouter.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<LimerickRouterArgs>(
          orElse: () =>
              LimerickRouterArgs(index: pathParams.optInt('limerickIndex')));
      return _i5.MaterialPageX<int>(
          routeData: routeData,
          child: _i3.LimerickPage(index: args.index, key: args.key));
    },
    NotFoundRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.NotFoundPage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(NavigationRouter.name, path: '/'),
        _i5.RouteConfig(DisplayRouter.name, path: '/display'),
        _i5.RouteConfig(LimerickRouter.name, path: '/limerick'),
        _i5.RouteConfig(NotFoundRoute.name, path: '*')
      ];
}

/// generated route for
/// [_i1.NavigationPage]
class NavigationRouter extends _i5.PageRouteInfo<void> {
  const NavigationRouter() : super(NavigationRouter.name, path: '/');

  static const String name = 'NavigationRouter';
}

/// generated route for
/// [_i2.DisplayPage]
class DisplayRouter extends _i5.PageRouteInfo<DisplayRouterArgs> {
  DisplayRouter(
      {String? title,
      String? text,
      _i6.Color? color,
      void Function()? delayedCallback,
      _i6.Key? key})
      : super(DisplayRouter.name,
            path: '/display',
            args: DisplayRouterArgs(
                title: title,
                text: text,
                color: color,
                delayedCallback: delayedCallback,
                key: key));

  static const String name = 'DisplayRouter';
}

class DisplayRouterArgs {
  const DisplayRouterArgs(
      {this.title, this.text, this.color, this.delayedCallback, this.key});

  final String? title;

  final String? text;

  final _i6.Color? color;

  final void Function()? delayedCallback;

  final _i6.Key? key;

  @override
  String toString() {
    return 'DisplayRouterArgs{title: $title, text: $text, color: $color, delayedCallback: $delayedCallback, key: $key}';
  }
}

/// generated route for
/// [_i3.LimerickPage]
class LimerickRouter extends _i5.PageRouteInfo<LimerickRouterArgs> {
  LimerickRouter({int? index, _i6.Key? key})
      : super(LimerickRouter.name,
            path: '/limerick',
            args: LimerickRouterArgs(index: index, key: key),
            rawPathParams: {'limerickIndex': index});

  static const String name = 'LimerickRouter';
}

class LimerickRouterArgs {
  const LimerickRouterArgs({this.index, this.key});

  final int? index;

  final _i6.Key? key;

  @override
  String toString() {
    return 'LimerickRouterArgs{index: $index, key: $key}';
  }
}

/// generated route for
/// [_i4.NotFoundPage]
class NotFoundRoute extends _i5.PageRouteInfo<void> {
  const NotFoundRoute() : super(NotFoundRoute.name, path: '*');

  static const String name = 'NotFoundRoute';
}
