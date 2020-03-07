import 'package:flutter/material.dart';
import 'package:portfolio2/themes/text_styles.dart';

class IconWithText extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Axis direction;

  IconWithText(
    this.iconData,
    this.text, {
    this.direction = Axis.horizontal,
  });

  @override
  Widget build(BuildContext context) {
    if (direction == Axis.vertical) {
      return Column(
        children: <Widget>[
          Icon(iconData, color: Colors.amber[600]),
          SizedBox(height: 4),
          Text(
            text,
            style: normalText.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      );
    }

    return Row(
      children: <Widget>[
        Icon(iconData, color: Colors.amber[600]),
        Text(' ', style: normalText),
        Text(
          text,
          style: normalText.copyWith(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
