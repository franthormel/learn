// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../ui/display.dart' as _i3;
import '../ui/limerick.dart' as _i4;
import '../ui/navigation/navigation.dart' as _i1;
import '../ui/not_found.dart' as _i5;
import '../ui/passing_arguments/passing_arguments.dart' as _i2;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    NavigationRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.NavigationPage());
    },
    PassingArgumentsRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.PassingArgumentsPage());
    },
    DisplayRoute.name: (routeData) {
      final args = routeData.argsAs<DisplayRouteArgs>(
          orElse: () => const DisplayRouteArgs());
      return _i6.MaterialPageX<dynamic>(
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
      return _i6.MaterialPageX<int>(
          routeData: routeData,
          child: _i4.LimerickPage(index: args.index, key: args.key));
    },
    NotFoundRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.NotFoundPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(NavigationRoute.name, path: '/'),
        _i6.RouteConfig(PassingArgumentsRoute.name, path: '/arguments'),
        _i6.RouteConfig(DisplayRoute.name, path: '/display'),
        _i6.RouteConfig(LimerickRoute.name, path: '/limerick'),
        _i6.RouteConfig(NotFoundRoute.name, path: '*')
      ];
}

/// generated route for
/// [_i1.NavigationPage]
class NavigationRoute extends _i6.PageRouteInfo<void> {
  const NavigationRoute() : super(NavigationRoute.name, path: '/');

  static const String name = 'NavigationRoute';
}

/// generated route for
/// [_i2.PassingArgumentsPage]
class PassingArgumentsRoute extends _i6.PageRouteInfo<void> {
  const PassingArgumentsRoute()
      : super(PassingArgumentsRoute.name, path: '/arguments');

  static const String name = 'PassingArgumentsRoute';
}

/// generated route for
/// [_i3.DisplayPage]
class DisplayRoute extends _i6.PageRouteInfo<DisplayRouteArgs> {
  DisplayRoute(
      {String? title,
      String? text,
      _i7.Color? color,
      void Function()? delayedCallback,
      _i7.Key? key})
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

  final _i7.Color? color;

  final void Function()? delayedCallback;

  final _i7.Key? key;

  @override
  String toString() {
    return 'DisplayRouteArgs{title: $title, text: $text, color: $color, delayedCallback: $delayedCallback, key: $key}';
  }
}

/// generated route for
/// [_i4.LimerickPage]
class LimerickRoute extends _i6.PageRouteInfo<LimerickRouteArgs> {
  LimerickRoute({int? index, _i7.Key? key})
      : super(LimerickRoute.name,
            path: '/limerick',
            args: LimerickRouteArgs(index: index, key: key),
            rawPathParams: {'limerickIndex': index});

  static const String name = 'LimerickRoute';
}

class LimerickRouteArgs {
  const LimerickRouteArgs({this.index, this.key});

  final int? index;

  final _i7.Key? key;

  @override
  String toString() {
    return 'LimerickRouteArgs{index: $index, key: $key}';
  }
}

/// generated route for
/// [_i5.NotFoundPage]
class NotFoundRoute extends _i6.PageRouteInfo<void> {
  const NotFoundRoute() : super(NotFoundRoute.name, path: '*');

  static const String name = 'NotFoundRoute';
}
