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
import 'package:flutter/material.dart' as _i8;

import '../ui/display.dart' as _i3;
import '../ui/limerick.dart' as _i4;
import '../ui/navigation/navigation.dart' as _i1;
import '../ui/nested_wrapped_routes/index.dart' as _i7;
import '../ui/not_found.dart' as _i6;
import '../ui/passing_arguments.dart' as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    NavigationRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.NavigationPage());
    },
    PassingArgumentsRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.PassingArgumentsPage());
    },
    DisplayRouter.name: (routeData) {
      final args = routeData.argsAs<DisplayRouterArgs>(
          orElse: () => const DisplayRouterArgs());
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.DisplayPage(
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
          child: _i4.LimerickPage(index: args.index, key: args.key));
    },
    BooksRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    NotFoundRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.NotFoundPage());
    },
    BooksRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.BooksPage());
    },
    BookDetailsRouter.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<BookDetailsRouterArgs>(
          orElse: () =>
              BookDetailsRouterArgs(id: pathParams.getInt('booksId')));
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.BookDetailsPage(id: args.id, key: args.key));
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(NavigationRouter.name, path: '/'),
        _i5.RouteConfig(PassingArgumentsRouter.name, path: '/arguments'),
        _i5.RouteConfig(DisplayRouter.name, path: '/display'),
        _i5.RouteConfig(LimerickRouter.name, path: '/limerick'),
        _i5.RouteConfig(BooksRouter.name, path: '/books', children: [
          _i5.RouteConfig(BooksRoute.name, path: '', parent: BooksRouter.name),
          _i5.RouteConfig(BookDetailsRouter.name,
              path: ':booksId', parent: BooksRouter.name)
        ]),
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
/// [_i2.PassingArgumentsPage]
class PassingArgumentsRouter extends _i5.PageRouteInfo<void> {
  const PassingArgumentsRouter()
      : super(PassingArgumentsRouter.name, path: '/arguments');

  static const String name = 'PassingArgumentsRouter';
}

/// generated route for
/// [_i3.DisplayPage]
class DisplayRouter extends _i5.PageRouteInfo<DisplayRouterArgs> {
  DisplayRouter(
      {String? title,
      String? text,
      _i8.Color? color,
      void Function()? delayedCallback,
      _i8.Key? key})
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

  final _i8.Color? color;

  final void Function()? delayedCallback;

  final _i8.Key? key;

  @override
  String toString() {
    return 'DisplayRouterArgs{title: $title, text: $text, color: $color, delayedCallback: $delayedCallback, key: $key}';
  }
}

/// generated route for
/// [_i4.LimerickPage]
class LimerickRouter extends _i5.PageRouteInfo<LimerickRouterArgs> {
  LimerickRouter({int? index, _i8.Key? key})
      : super(LimerickRouter.name,
            path: '/limerick',
            args: LimerickRouterArgs(index: index, key: key),
            rawPathParams: {'limerickIndex': index});

  static const String name = 'LimerickRouter';
}

class LimerickRouterArgs {
  const LimerickRouterArgs({this.index, this.key});

  final int? index;

  final _i8.Key? key;

  @override
  String toString() {
    return 'LimerickRouterArgs{index: $index, key: $key}';
  }
}

/// generated route for
/// [_i5.EmptyRouterPage]
class BooksRouter extends _i5.PageRouteInfo<void> {
  const BooksRouter({List<_i5.PageRouteInfo>? children})
      : super(BooksRouter.name, path: '/books', initialChildren: children);

  static const String name = 'BooksRouter';
}

/// generated route for
/// [_i6.NotFoundPage]
class NotFoundRoute extends _i5.PageRouteInfo<void> {
  const NotFoundRoute() : super(NotFoundRoute.name, path: '*');

  static const String name = 'NotFoundRoute';
}

/// generated route for
/// [_i7.BooksPage]
class BooksRoute extends _i5.PageRouteInfo<void> {
  const BooksRoute() : super(BooksRoute.name, path: '');

  static const String name = 'BooksRoute';
}

/// generated route for
/// [_i7.BookDetailsPage]
class BookDetailsRouter extends _i5.PageRouteInfo<BookDetailsRouterArgs> {
  BookDetailsRouter({required int id, _i8.Key? key})
      : super(BookDetailsRouter.name,
            path: ':booksId',
            args: BookDetailsRouterArgs(id: id, key: key),
            rawPathParams: {'booksId': id});

  static const String name = 'BookDetailsRouter';
}

class BookDetailsRouterArgs {
  const BookDetailsRouterArgs({required this.id, this.key});

  final int id;

  final _i8.Key? key;

  @override
  String toString() {
    return 'BookDetailsRouterArgs{id: $id, key: $key}';
  }
}
