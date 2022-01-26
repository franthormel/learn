// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../ui/navigation/index.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    NavigationRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.NavigationPage());
    },
    DisplayRoute.name: (routeData) {
      final args = routeData.argsAs<DisplayRouteArgs>(
          orElse: () => const DisplayRouteArgs());
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.DisplayPage(
              title: args.title,
              text: args.text,
              color: args.color,
              callback: args.callback,
              key: args.key));
    },
    LimerickRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LimerickPage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(NavigationRoute.name, path: '/'),
        _i2.RouteConfig(DisplayRoute.name, path: '/display-page'),
        _i2.RouteConfig(LimerickRoute.name, path: '/limerick'),
        _i2.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.NavigationPage]
class NavigationRoute extends _i2.PageRouteInfo<void> {
  const NavigationRoute() : super(NavigationRoute.name, path: '/');

  static const String name = 'NavigationRoute';
}

/// generated route for
/// [_i1.DisplayPage]
class DisplayRoute extends _i2.PageRouteInfo<DisplayRouteArgs> {
  DisplayRoute(
      {String? title,
      String? text,
      _i3.Color? color,
      void Function()? callback,
      _i3.Key? key})
      : super(DisplayRoute.name,
            path: '/display-page',
            args: DisplayRouteArgs(
                title: title,
                text: text,
                color: color,
                callback: callback,
                key: key));

  static const String name = 'DisplayRoute';
}

class DisplayRouteArgs {
  const DisplayRouteArgs(
      {this.title, this.text, this.color, this.callback, this.key});

  final String? title;

  final String? text;

  final _i3.Color? color;

  final void Function()? callback;

  final _i3.Key? key;

  @override
  String toString() {
    return 'DisplayRouteArgs{title: $title, text: $text, color: $color, callback: $callback, key: $key}';
  }
}

/// generated route for
/// [_i1.LimerickPage]
class LimerickRoute extends _i2.PageRouteInfo<void> {
  const LimerickRoute() : super(LimerickRoute.name, path: '/limerick');

  static const String name = 'LimerickRoute';
}
