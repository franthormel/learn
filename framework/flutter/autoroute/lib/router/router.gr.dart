// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../ui/colors/colors_authenticate.dart' as _i2;
import '../ui/index.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    NavigationRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.NavigationPage());
    },
    DisplayRouter.name: (routeData) {
      final args = routeData.argsAs<DisplayRouterArgs>(
          orElse: () => const DisplayRouterArgs());
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.DisplayPage(
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
      return _i3.MaterialPageX<int>(
          routeData: routeData,
          child: _i1.LimerickPage(index: args.index, key: args.key));
    },
    ColorsWrapperRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ColorsWrapperPage());
    },
    NotFoundRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.NotFoundPage());
    },
    ColorsAuthenticateRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ColorsAuthenticatePage());
    },
    ColorsRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ColorsPage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(NavigationRouter.name, path: '/'),
        _i3.RouteConfig(DisplayRouter.name, path: '/display'),
        _i3.RouteConfig(LimerickRouter.name, path: '/limerick'),
        _i3.RouteConfig(ColorsWrapperRouter.name, path: '/colors', children: [
          _i3.RouteConfig(ColorsAuthenticateRouter.name,
              path: 'authenticate', parent: ColorsWrapperRouter.name),
          _i3.RouteConfig(ColorsRouter.name,
              path: 'ColorsRouter', parent: ColorsWrapperRouter.name),
          _i3.RouteConfig('*#redirect',
              path: '*',
              parent: ColorsWrapperRouter.name,
              redirectTo: 'ColorsAuthenticateRouter',
              fullMatch: true)
        ]),
        _i3.RouteConfig(NotFoundRoute.name, path: '*')
      ];
}

/// generated route for
/// [_i1.NavigationPage]
class NavigationRouter extends _i3.PageRouteInfo<void> {
  const NavigationRouter() : super(NavigationRouter.name, path: '/');

  static const String name = 'NavigationRouter';
}

/// generated route for
/// [_i1.DisplayPage]
class DisplayRouter extends _i3.PageRouteInfo<DisplayRouterArgs> {
  DisplayRouter(
      {String? title,
      String? text,
      _i4.Color? color,
      void Function()? delayedCallback,
      _i4.Key? key})
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

  final _i4.Color? color;

  final void Function()? delayedCallback;

  final _i4.Key? key;

  @override
  String toString() {
    return 'DisplayRouterArgs{title: $title, text: $text, color: $color, delayedCallback: $delayedCallback, key: $key}';
  }
}

/// generated route for
/// [_i1.LimerickPage]
class LimerickRouter extends _i3.PageRouteInfo<LimerickRouterArgs> {
  LimerickRouter({int? index, _i4.Key? key})
      : super(LimerickRouter.name,
            path: '/limerick',
            args: LimerickRouterArgs(index: index, key: key),
            rawPathParams: {'limerickIndex': index});

  static const String name = 'LimerickRouter';
}

class LimerickRouterArgs {
  const LimerickRouterArgs({this.index, this.key});

  final int? index;

  final _i4.Key? key;

  @override
  String toString() {
    return 'LimerickRouterArgs{index: $index, key: $key}';
  }
}

/// generated route for
/// [_i1.ColorsWrapperPage]
class ColorsWrapperRouter extends _i3.PageRouteInfo<void> {
  const ColorsWrapperRouter({List<_i3.PageRouteInfo>? children})
      : super(ColorsWrapperRouter.name,
            path: '/colors', initialChildren: children);

  static const String name = 'ColorsWrapperRouter';
}

/// generated route for
/// [_i1.NotFoundPage]
class NotFoundRoute extends _i3.PageRouteInfo<void> {
  const NotFoundRoute() : super(NotFoundRoute.name, path: '*');

  static const String name = 'NotFoundRoute';
}

/// generated route for
/// [_i2.ColorsAuthenticatePage]
class ColorsAuthenticateRouter extends _i3.PageRouteInfo<void> {
  const ColorsAuthenticateRouter()
      : super(ColorsAuthenticateRouter.name, path: 'authenticate');

  static const String name = 'ColorsAuthenticateRouter';
}

/// generated route for
/// [_i1.ColorsPage]
class ColorsRouter extends _i3.PageRouteInfo<void> {
  const ColorsRouter() : super(ColorsRouter.name, path: 'ColorsRouter');

  static const String name = 'ColorsRouter';
}
