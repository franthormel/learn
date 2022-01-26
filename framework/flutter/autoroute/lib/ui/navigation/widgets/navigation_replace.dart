import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../router/router.gr.dart';
import 'navigation_widget.dart';

class NavigationReplaceWidget extends StatelessWidget {
  static const _kColor = Color(0xFF214F4B);

  const NavigationReplaceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationPageWidget(
      children: children(context),
      icon: Icons.find_replace,
      title: 'Replace Methods',
    );
  }

  List<Widget> children(BuildContext context) {
    final router = AutoRouter.of(context);
    final style = ElevatedButton.styleFrom(primary: _kColor);

    return [
      ElevatedButton(
        child: const Text('Replace'),
        style: style,
        onPressed: () {
          router.push(
            DisplayRoute(
              callback: () {
                router.replace(const LimerickRoute());
              },
              color: _kColor,
              title: 'Replace',
              text: 'This page will be replaced in 3 seconds.',
            ),
          );
        },
      ),
      ElevatedButton(
        child: const Text('Replace Named'),
        style: style,
        onPressed: () {
          router.push(
            DisplayRoute(
              callback: () {
                router.replaceNamed('/limerick');
              },
              color: _kColor,
              title: 'Replace Named',
              text: 'This page will be replaced in 3 seconds.',
            ),
          );
        },
      ),
      ElevatedButton(
        child: const Text('Replace All'),
        style: style,
        onPressed: () {
          router.push(
            DisplayRoute(
              color: _kColor,
              title: 'Replace All',
              text: 'This page will be replaced in 3 seconds.',
              callback: () {
                router.replaceAll([
                  const NavigationRoute(),
                ]);
              },
            ),
          );
        },
      ),
    ];
  }
}
