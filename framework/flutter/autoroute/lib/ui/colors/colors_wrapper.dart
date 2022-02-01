import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../router/router.gr.dart';
import '../../state/colors.dart';
import '../side_nav.dart';

class ColorsWrapperPage extends StatelessWidget {
  const ColorsWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideNavPage(
      title: 'Wrapper Page',
      actions: [
        IconButton(
          icon: const Icon(Icons.help),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => const AlertDialog(
                title: Text('Advanced topics'),
                content: Text(
                  'Nested Routes, wrapping routes, and declarative routing.',
                ),
              ),
            );
          },
        ),
      ],
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
