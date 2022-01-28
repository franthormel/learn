import 'package:flutter/material.dart';

import '../display.dart';

class NoTransitionPage extends StatelessWidget {
  const NoTransitionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DisplayPage(title: 'No Transition');
  }
}
