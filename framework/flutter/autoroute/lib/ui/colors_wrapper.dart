import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:provider/provider.dart';

import '../state/app_state.dart';
import 'sidenav.dart';

class ColorsWrapperPage extends StatelessWidget {
  const ColorsWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideNavPage(
      title: 'Advanced',
      child: Provider(
        create: (context) => AppStateManager(),
        child: const AutoRouter(),
      ),
    );
  }
}
