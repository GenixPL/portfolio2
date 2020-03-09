import 'package:flutter/material.dart';
import 'package:portfolio2/themes/text_styles.dart';

class HomeNameHeader extends StatelessWidget {
  static const double _padding = 32;

  static double neededHeight() {
    return 72 + _padding;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, _padding, 16, 0),
      child: Column(
        children: <Widget>[
          Text(
            'łukASZ',
            style: homeHeaderText,
          ),
          Text(
            'NieDZiAłek',
            style: homeHeaderText,
          ),
        ],
      ),
    );
  }
}
