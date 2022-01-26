import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import '../../../router/router.gr.dart';
import 'navigation_widget.dart';

class NavigationPushWidget extends StatelessWidget {
  static const _kColor = Color(0xFFFF3366);

  const NavigationPushWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationPageWidget(
      children: children(context),
      icon: Icons.arrow_downward,
      title: 'Push Methods',
    );
  }

  List<Widget> children(BuildContext context) {
    final router = AutoRouter.of(context);
    final style = ElevatedButton.styleFrom(primary: _kColor);

    return [
      ElevatedButton(
        child: const Text('Push'),
        style: style,
        onPressed: () {
          router.push(DisplayRoute(color: _kColor));
        },
      ),
      ElevatedButton(
        child: const Text('Push Named'),
        style: style,
        onPressed: () {
          router.pushNamed('/limerick');
        },
      ),
      ElevatedButton(
        child: const Text('Push All'),
        style: style,
        onPressed: () {
          router.pushAll([
            DisplayRoute(
              color: _kColor,
              text: 'This is the first page',
              title: 'Display #1',
            ),
            DisplayRoute(
              color: _kColor,
              text: 'This is the second page',
              title: 'Display #2',
            ),
          ]);
        },
      ),
      ElevatedButton(
        child: const Text('Pop & Push'),
        style: style,
        onPressed: () {
          router.push(
            DisplayRoute(
              color: _kColor,
              title: 'Pop & Push',
              text:
                  'This page will be popped and a new page will be pushed after 3 seconds.',
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
              title: 'Pop & Push All',
              text:
                  'This page will be popped and multiple pages will be pushed after 3 seconds.',
              callback: () {
                router.popAndPushAll([
                  DisplayRoute(
                    color: _kColor,
                    text: 'This is the first page',
                    title: 'Display #1',
                  ),
                  DisplayRoute(
                    color: _kColor,
                    text: 'This is the second page',
                    title: 'Display #2',
                  ),
                ]);
              },
            ),
          );
        },
      ),
      ElevatedButton(
        child: const Text('Push & Pop Until'),
        style: style,
        onPressed: () {
          router.push(
            DisplayRoute(
              color: _kColor,
              title: 'Push & Pop Until',
              text: 'This page will be popped in 3 seconds.',
              callback: () {
                router.pushAndPopUntil(
                  const LimerickRoute(),
                  predicate: (route) {
                    return route.isFirst;
                  },
                );
              },
            ),
          );
        },
      ),
    ];
  }
}
