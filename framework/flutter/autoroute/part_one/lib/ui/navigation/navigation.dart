import 'package:flutter/material.dart';

import '../sidenav.dart';

import 'navigation_navigate.dart';
import 'navigation_pop.dart';
import 'navigation_push.dart';
import 'navigation_replace.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideNavPage(
      title: 'Navigation',
      child: ListView.separated(
        itemCount: navigationWidgets.length,
        itemBuilder: (context, index) => navigationWidgets[index],
        separatorBuilder: (context, index) => const SizedBox(height: 32.0),
      ),
    );
  }

  List<Widget> get navigationWidgets {
    return const [
      NavigationPushWidget(),
      NavigationReplaceWidget(),
      NavigationPopWidget(),
      NavigationNavigateWidget(),
    ];
  }
}
