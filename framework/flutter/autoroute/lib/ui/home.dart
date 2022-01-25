import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import '../router/router.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final autoroute = AutoRouter.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
          spacing: 5.0,
          runSpacing: 5.0,
          children: [
            ElevatedButton(
              onPressed: () {
                autoroute.push(const BooksRoute());
              },
              child: const Text('Books'),
            ),
            ElevatedButton(
              onPressed: () {
                autoroute.pushAll(const [
                  BooksRoute(),
                  BookDetailsRoute(),
                ]);
              },
              child: const Text('Push All'),
            ),
          ],
        ),
      ),
    );
  }
}
