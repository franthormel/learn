import 'package:flutter/material.dart';

class NavigationPageWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final List<Widget> children;

  const NavigationPageWidget({
    required this.title,
    required this.icon,
    required this.children,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.grey[800],
                fontWeight: FontWeight.w600,
                fontSize: Theme.of(context).textTheme.headline6!.fontSize,
              ),
            ),
            Icon(icon),
          ],
        ),
        const Divider(color: Colors.transparent),
        Wrap(
          spacing: 6.0,
          children: children,
        ),
      ],
    );
  }
}
