import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../router/router.gr.dart';

class SideNavPage extends StatelessWidget {
  final String title;
  final Widget child;

  const SideNavPage({
    required this.title,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = AutoRouter.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text('Navigation'),
              onTap: () {
                router.navigate(const NavigationRoute());
                router.pop();
              },
            ),
            ListTile(
              title: const Text('Passing Arguments'),
              onTap: () {
                router.navigate(const PassingArgumentsRoute());
                router.pop();
              },
            ),
            ListTile(
              title: const Text('Page Transitions'),
              onTap: () {
                router.replace(const TransitionsRoute());
                router.pop();
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: child,
      ),
    );
  }
}
