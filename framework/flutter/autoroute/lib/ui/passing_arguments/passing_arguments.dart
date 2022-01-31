import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import '../../router/router.gr.dart';
import '../sidenav.dart';
import '../../data/limmericks.dart';

class PassingArgumentsPage extends StatelessWidget {
  const PassingArgumentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideNavPage(
      title: 'Passing arguments',
      child: ListView.builder(
        itemCount: limericks.length,
        itemBuilder: (context, index) {
          final limerick = limericks[index];

          return Card(
            child: ListTile(
              title: Text(limerick.title),
              onTap: () async {
                final router = AutoRouter.of(context);
                final scaffoldMessenger = ScaffoldMessenger.of(context);
                final wordsCount = await router.push<int>(
                  LimerickRoute(index: index),
                );

                if (wordsCount != null) {
                  scaffoldMessenger.showSnackBar(
                    SnackBar(
                      behavior: SnackBarBehavior.floating,
                      duration: const Duration(seconds: 5),
                      action: SnackBarAction(
                        onPressed: () {
                          scaffoldMessenger.clearSnackBars();
                        },
                        label: 'OK',
                      ),
                      content: Text(
                        'That limerick contained $wordsCount words.',
                      ),
                    ),
                  );
                }
              },
            ),
          );
        },
      ),
    );
  }
}
