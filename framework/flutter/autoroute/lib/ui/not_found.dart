import 'package:flutter/material.dart';

import 'side_nav.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideNavPage(
      title: 'Page not found',
      child: const Center(
        child: Text('This resource is unavailable. 😔'),
      ),
    );
  }
}
