import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../state/colors.dart';

class ColorsListPage extends StatelessWidget {
  const ColorsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorsProvider = Provider.of<ColorsProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: GridView.builder(
            itemCount: colors.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemBuilder: (context, index) {
              final color = colors[index];

              return Material(
                color: color,
                child: InkWell(
                  onTap: () {
                    colorsProvider.colorTapped(color);
                  },
                  child: favoriteIcon(colorsProvider, color),
                ),
              );
            },
          ),
        ),
        const Divider(
          color: Colors.transparent,
          height: 24.0,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Icon(Icons.logout),
            label: const Text('Logout'),
            onPressed: () {
              colorsProvider.logout();
            },
          ),
        ),
      ],
    );
  }

  Icon? favoriteIcon(ColorsProvider provider, Color color) {
    if (provider.isFavorite(color)) {
      return const Icon(Icons.favorite_border);
    }
  }

  List<Color> get colors {
    return const [
      Color(0xFF4BC6B9),
      Color(0xFF73C1C6),
      Color(0xFF96C3CE),
      Color(0xFFA79AB2),
      Color(0xFFB57BA6),
      Color(0xFF1F2041),
      Color(0xFF4B3F72),
      Color(0xFF998888),
      Color(0xFF823329),
      Color(0xFF8A3033),
      Color(0xFF97F9F9),
      Color(0xFFA4DEF9),
      Color(0xFFC1E0F7),
      Color(0xFFCFBAE1),
      Color(0xFFC59FC9),
      Color(0xFFCB48B7),
      Color(0xFF2E2D4D),
      Color(0xFF337357),
      Color(0xFF734B5E),
      Color(0xFF565857),
      Color(0xFFEA638C),
      Color(0xFFB33C86),
      Color(0xFF190E4F),
      Color(0xFF03012C),
      Color(0xFF002A22),
      Color(0xFFFBFEF9),
      Color(0xFF0E79B2),
      Color(0xFFF39237),
      Color(0xFF8D99AE),
      Color(0xFFEDF2F4),
      Color(0xFFCCD7C5),
      Color(0xFFEFD2CB),
      Color(0xFFC7A27C),
      Color(0xFFD65780),
      Color(0xFFEE9480),
      Color(0xFF0A2463),
      Color(0xFF605F5E),
      Color(0xFF247BA0),
      Color(0xFFD65780),
      Color(0xFF14281D),
      Color(0xFF16302B),
      Color(0xFF694873),
      Color(0xFF8B728E),
      Color(0xFF85B79D),
      Color(0xFFC0E5C8),
      Color(0xFFD00000),
      Color(0xFFFFBA08),
      Color(0xFF72DDF7),
      Color(0xFFF4F4ED),
      Color(0xFFDBAD6A),
    ];
  }
}
