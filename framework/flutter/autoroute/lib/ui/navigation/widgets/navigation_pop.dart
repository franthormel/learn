import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../router/router.gr.dart';
import 'navigation_widget.dart';

class NavigationPopWidget extends StatelessWidget {
  static const _kColor = Color(0xFF031A6B);

  const NavigationPopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationPageWidget(
      title: 'Pop Methods',
      icon: Icons.arrow_upward,
      children: children(context),
    );
  }

  List<Widget> children(BuildContext context) {
    final router = AutoRouter.of(context);
    final style = ElevatedButton.styleFrom(primary: _kColor);

    return [
      ElevatedButton(
        child: const Text('Pop'),
        style: style,
        onPressed: () {
          router.push(
            DisplayRoute(
              color: _kColor,
              text: 'This page will be popped in 3 seconds.',
              title: 'Pop',
              callback: () {
                router.pop();
              },
            ),
          );
        },
      ),
      ElevatedButton(
        child: const Text('Pop & Push'),
        style: style,
        onPressed: () {
          router.push(
            DisplayRoute(
              color: _kColor,
              text: 'This page will be popped in 3 seconds.',
              title: 'Pop & Push',
              callback: () {
                router.popAndPush(const LimerickRoute());
              },
            ),
          );
        },
      ),
      ElevatedButton(
        child: const Text('Pop & Push All'),
        style: style,
        onPressed: () {
          router.push(
            DisplayRoute(
              color: _kColor,
              text: 'This page will be popped in 3 seconds.',
              title: 'Pop & Push All',
              callback: () {
                router.popAndPushAll([
                  DisplayRoute(
                    color: _kColor,
                    title: 'Display #1',
                  ),
                  DisplayRoute(
                    color: _kColor,
                    title: 'Display #2',
                  ),
                ]);
              },
            ),
          );
        },
      ),
    ];
  }
}
