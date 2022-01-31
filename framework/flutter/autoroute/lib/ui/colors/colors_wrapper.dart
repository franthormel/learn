import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:provider/provider.dart';

import '../../router/router.gr.dart';
import '../../state/colors.dart';
import '../sidenav.dart';

class ColorsWrapperPage extends StatelessWidget {
  const ColorsWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideNavPage(
      title: 'Advanced',
      child: ChangeNotifierProvider(
        create: (context) => ColorsProvider(),
        child: Consumer<ColorsProvider>(
          builder: (context, colors, child) => AutoRouter.declarative(
            routes: (context) => [
              if (colors.isNotAuthenticated) const ColorsAuthenticateRouter(),
              if (colors.isAuthenticated) const ColorsRouter()
            ],
          ),
        ),
      ),
    );
  }
}
