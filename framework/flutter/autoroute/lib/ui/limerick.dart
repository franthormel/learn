import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../data/index.dart';
import '../models/index.dart';

class LimerickPage extends StatelessWidget {
  int? index;

  LimerickPage({
    @PathParam('limerickIndex') this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = limerick;
    final body = limerickBody(data);

    return Scaffold(
      appBar: AppBar(
        title: Text(data.title),
        actions: actions(context),
      ),
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

  Limerick get limerick => limericks[limerickIndex];

  List<String> limerickBody(Limerick limerick) {
    return limerick.body.split('\n');
  }

  int get limerickIndex {
    if (index == null) {
      final random = Random();
      final number = random.nextInt(limericks.length);

      return number;
    }

    return index!;
  }

  List<Widget> actions(BuildContext context) {
    final widgets = <Widget>[];

    if (index != null) {
      widgets.add(IconButton(
        icon: const Icon(Icons.check),
        onPressed: () {
          final router = AutoRouter.of(context);
          final wordsCount = limerick.body.characters.length;

          router.pop(wordsCount);
        },
      ));
    }

    return widgets;
  }
}
