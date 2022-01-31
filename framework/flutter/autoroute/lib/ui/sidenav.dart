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
              title: const Text('Basic navigation'),
              onTap: () {
                router.navigate(const NavigationRouter());
                router.pop();
              },
            ),
            // Contains
            // Passing Arguments
            // Nested Routes
            // Wrapping Routes
            // Declarative Routing
            ListTile(
              title: const Text('Advanced'),
              onTap: () {
                router.pop();
              },
            )
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
