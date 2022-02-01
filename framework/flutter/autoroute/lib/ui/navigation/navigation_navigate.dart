import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../router/router.constants.dart';
import '../../router/router.gr.dart';
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

    return [
      ElevatedButton(
        child: const Text('Navigate'),
        style: style,
        onPressed: () {
          router.navigate(DisplayRouter(
            color: _kColor,
            title: 'Navigate',
          ));
        },
      ),
      ElevatedButton(
        child: const Text('Navigate Named'),
        style: style,
        onPressed: () {
          router.navigateNamed(RoutePath.limerick);
        },
      ),
    ];
  }
}
