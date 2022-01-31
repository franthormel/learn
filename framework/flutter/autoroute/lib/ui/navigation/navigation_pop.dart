import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../router/router.gr.dart';
import '../../router/router.names.dart';

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
              delayedCallback: () {
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
              delayedCallback: () {
                router.popAndPush(LimerickRoute());
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
              delayedCallback: () {
                router.popAndPushAll(
                  [
                    DisplayRoute(
                      color: _kColor,
                      text: 'This is the first page',
                      title: 'Pop & Push All #1',
                    ),
                    DisplayRoute(
                      color: _kColor,
                      text: 'This is the second page',
                      title: 'Pop & Push All #2',
                    ),
                  ],
                );
              },
            ),
          );
        },
      ),
      ElevatedButton(
        child: const Text('Pop Until'),
        style: style,
        onPressed: () {
          router.push(DisplayRoute(
            color: _kColor,
            text: 'This page will be popped in 3 seconds.',
            title: 'Pop Until',
            delayedCallback: () {
              router.popUntil((route) => route.isFirst);
            },
          ));
        },
      ),
      ElevatedButton(
        child: const Text('Pop Until Root'),
        style: style,
        onPressed: () {
          router.pushAll([
            DisplayRoute(
              color: _kColor,
              title: 'Pop Until Root #1',
            ),
            DisplayRoute(
              color: _kColor,
              text: 'This page will be popped in 3 seconds.',
              title: 'Pop Until Root #2',
              delayedCallback: () {
                router.popUntilRoot();
              },
            ),
          ]);
        },
      ),
      ElevatedButton(
        child: const Text('Pop Until Route with Name'),
        style: style,
        onPressed: () {
          router.pushAll([
            LimerickRoute(),
            DisplayRoute(
              color: _kColor,
              text:
                  'This page will be popped until a limerick page is displayed in 3 seconds.',
              title: 'Pop Until Route with Name',
              delayedCallback: () {
                router.popUntilRouteWithName(RoutePaths.limerick);
              },
            ),
          ]);
        },
      ),
    ];
  }
}
