import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../state/colors.dart';

class ColorsAuthenticatePage extends StatelessWidget {
  const ColorsAuthenticatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorsProvider = Provider.of<ColorsProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        ShaderMask(
          child: Text(
            'Colorfully',
            style: Theme.of(context).textTheme.headline2!.apply(
                  color: Colors.white,
                  fontWeightDelta: 3,
                  fontSizeDelta: 10.0,
                ),
          ),
          shaderCallback: (bounds) => const LinearGradient(
            colors: [
              Color(0xFF264653),
              Color(0xFF2A9D8F),
              Color(0xFFE9C46A),
              Color(0xFFF4A261),
              Color(0xFFF4A261),
              Color(0xFFE76F51),
            ],
          ).createShader(bounds),
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Icon(Icons.login),
            label: const Text('Login'),
            onPressed: () {
              colorsProvider.login();
            },
          ),
        ),
      ],
    );
  }
}
