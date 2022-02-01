import 'package:flutter/material.dart';

import 'side_nav.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SideNavPage(
      title: 'Page not found',
      child: Center(
        child: Text('This resource is unavailable. 😔'),
      ),
    );
  }
}
