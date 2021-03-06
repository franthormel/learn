import 'dart:async';

import 'package:flutter/material.dart';

class DisplayPage extends StatelessWidget {
  final String? title;
  final String? text;
  final Color? color;
  final void Function()? delayedCallback;

  const DisplayPage({
    this.title,
    this.text,
    this.color,
    this.delayedCallback,
    Key? key,
  }) : super(key: key);

  void executeCallback() {
    if (delayedCallback != null) {
      Timer(const Duration(seconds: 3), delayedCallback!);
    }
  }

  @override
  Widget build(BuildContext context) {
    executeCallback();

    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: _color,
                height: 150.0,
                width: 150.0,
              ),
              const SizedBox(height: 12.0),
              Text(
                _text,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color get _color => color != null ? color! : Colors.blue;

  String get _text => text != null ? text! : 'This text is displayed ';

  String get _title => title != null ? title! : 'Display';
}
