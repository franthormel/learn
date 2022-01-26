import 'package:flutter/material.dart';

import 'widgets/index.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          itemCount: navigationWidgets.length,
          itemBuilder: (context, index) => navigationWidgets[index],
          separatorBuilder: (context, index) => const SizedBox(height: 32.0),
        ),
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
