import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../router/router.names.dart';

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
                router.navigateNamed(RouteNames.navigation);
                router.pop();
              },
            ),
            ListTile(
              title: const Text('Passing Arguments'),
              onTap: () {
                router.navigateNamed(RouteNames.passingArguments);
                router.pop();
              },
            ),
            ListTile(
              title: const Text('Page Transitions'),
              onTap: () {
                // TODO
              },
            ),
            ListTile(
              title: const Text('Nested Routes'),
              onTap: () {
                // TODO
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Declarative Routing'),
              onTap: () {
                // TODO
              },
            ),
            ListTile(
              title: const Text('Bottom Navigation Bar'),
              onTap: () {
                // TODO
              },
            ),
            ListTile(
              title: const Text('Route Guards'),
              onTap: () {
                // TODO
              },
            ),
            ListTile(
              title: const Text('Authentication'),
              onTap: () {
                // TODO
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
