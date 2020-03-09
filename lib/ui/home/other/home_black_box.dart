import 'package:flutter/material.dart';
import 'package:portfolio2/themes/text_styles.dart';
import 'package:portfolio2/ui/common/edge_clip.dart';

class HomeBlackBox extends StatelessWidget {
  static final double height = 124;
  static final double width = 124;

  final IconData iconData;
  final String text;
  final Function() onTap;

  HomeBlackBox({
    @required this.iconData,
    @required this.text,
    this.onTap,
  });

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipPath(
        clipper: EdgeClip(28),
        child: Container(
          width: width,
          height: height,
          color: Colors.amber,
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: ClipPath(
              clipper: EdgeClip(26),
              child: Container(
                width: width - 8,
                height: height - 8,
                color: Colors.grey[900],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(iconData, color: Colors.white),
                    Text(text, style: headerWhiteText()),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
