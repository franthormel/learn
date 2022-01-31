import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../router/router.gr.dart';
import '../../router/router.names.dart';

import 'navigation_widget.dart';

class NavigationNavigateWidget extends StatelessWidget {
  static const _kColor = Color(0xFFEE6123);

  const NavigationNavigateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationPageWidget(
      title: 'Navigate Methods',
      icon: Icons.navigation,
      children: children(context),
    );
  }

  List<Widget> children(BuildContext context) {
    final router = AutoRouter.of(context);
    final style = ElevatedButton.styleFrom(primary: _kColor);

    // .navigate(BooksRoute())
    //     .navigateNamed('/books')
    //     .navigateAll([BooksRoute(), BookDetailsRoute()])
    return [
      ElevatedButton(
        child: const Text('Navigate'),
        style: style,
        onPressed: () {
          router.navigate(DisplayRoute(
            color: _kColor,
            title: 'Navigate',
          ));
        },
      ),
      ElevatedButton(
        child: const Text('Navigate Named'),
        style: style,
        onPressed: () {
          router.navigateNamed(RoutePaths.limerick);
        },
      ),
      ElevatedButton(
        child: const Text('Navigate All'),
        style: style,
        onPressed: () {
          // TODO How does Navigate All work?
          //
          // The section below doesn't work as
          // compared to pushAll().
          //
          // router.navigateAll([
          //   const LimerickRoute(),
          //   DisplayRoute(),
          // ]);
        },
      ),
    ];
  }
}
