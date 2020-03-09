import 'package:flutter/material.dart';
import 'package:portfolio2/ui/common/edge_clip.dart';

class HomeYellowBox extends StatelessWidget {
  static final double width = 52;
  static final double height = 52;

  final Function() onTap;
  final Widget child;
  final Color color;

  HomeYellowBox({
    @required this.child,
    @required this.onTap,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipPath(
        clipper: EdgeClip(12),
        child: Container(
          width: width,
          height: height,
          color: color,
          child: Center(child: child),
        ),
      ),
    );
  }
}
