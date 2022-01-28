import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import '../sidenav.dart';
import '../../router/router.gr.dart';

class TransitionInfo {
  final String title;
  final PageRouteInfo route;

  const TransitionInfo({
    required this.title,
    required this.route,
  });
}

class TransitionsPage extends StatelessWidget {
  const TransitionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideNavPage(
      title: 'Page Transitions',
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
        itemBuilder: (context, index) {
          final page = transitionPages[index];
          final router = AutoRouter.of(context);

          return Material(
            color: const Color(0xFFFFFF82),
            elevation: 2.0,
            borderRadius: BorderRadius.circular(8.0),
            child: InkWell(
              child: Center(
                child: Text(page.title),
              ),
              onTap: () {
                router.push(page.route);
              },
            ),
          );
        },
        itemCount: transitionPages.length,
      ),
    );
  }

  List<TransitionInfo> get transitionPages {
    return const [
      TransitionInfo(
        title: 'Slide Right',
        route: SlideRightRoute(),
      ),
      TransitionInfo(
        title: 'Slide Left',
        route: SlideLeftRoute(),
      ),
      TransitionInfo(
        title: 'Slide Right with Fade',
        route: SlideRightFadeRoute(),
      ),
      TransitionInfo(
        title: 'Slide Left with Fade',
        route: SlideLeftFadeRoute(),
      ),
      TransitionInfo(
        title: 'Slide Top',
        route: SlideTopRoute(),
      ),
      TransitionInfo(
        title: 'Slide Bottom',
        route: SlideBottomRoute(),
      ),
      TransitionInfo(
        title: 'Fade In',
        route: FadeInRoute(),
      ),
      TransitionInfo(
        title: 'Zoom In',
        route: ZoomInRoute(),
      ),
      TransitionInfo(
        title: 'No Transition',
        route: NoTransitionRoute(),
      ),
    ];
  }
}
