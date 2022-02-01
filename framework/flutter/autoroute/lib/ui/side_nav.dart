import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../router/router.gr.dart';

class SideNavPage extends StatelessWidget {
  final String title;
  final Widget child;

  List<Widget>? actions;

  SideNavPage({
    required this.title,
    required this.child,
    this.actions,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = AutoRouter.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: actions,
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
            ListTile(
              title: const Text('Advanced'),
              onTap: () {
                router.navigate(const ColorsWrapperRouter());
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
