import 'dart:math';

import 'package:flutter/material.dart';

import '../../models/index.dart' show Limerick;
import '../../data/index.dart' show limericks;

class LimerickPage extends StatelessWidget {
  const LimerickPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = limerick;
    final body = limerickBody(data);

    return Scaffold(
      appBar: AppBar(title: Text(data.title)),
      body: ListView.separated(
        itemCount: body.length,
        padding: const EdgeInsets.all(16.0),
        separatorBuilder: (context, index) {
          return const SizedBox(height: 12.0);
        },
        itemBuilder: (context, index) {
          return Text(
            body[index],
            textAlign: TextAlign.center,
          );
        },
      ),
    );
  }

  Limerick get limerick {
    final random = Random();
    final index = random.nextInt(limericks.length);

    return limericks[index];
  }

  List<String> limerickBody(Limerick limerick) {
    return limerick.body.split('\n');
  }
}
