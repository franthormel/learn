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

import '../ui/ui.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    BooksRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.BooksPage());
    },
    BookDetailsRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.BookDetailsPage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(HomeRoute.name, path: '/'),
        _i2.RouteConfig(BooksRoute.name, path: '/books-page'),
        _i2.RouteConfig(BookDetailsRoute.name, path: '/book-details-page'),
        _i2.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i1.BooksPage]
class BooksRoute extends _i2.PageRouteInfo<void> {
  const BooksRoute() : super(BooksRoute.name, path: '/books-page');

  static const String name = 'BooksRoute';
}

/// generated route for
/// [_i1.BookDetailsPage]
class BookDetailsRoute extends _i2.PageRouteInfo<void> {
  const BookDetailsRoute()
      : super(BookDetailsRoute.name, path: '/book-details-page');

  static const String name = 'BookDetailsRoute';
}
