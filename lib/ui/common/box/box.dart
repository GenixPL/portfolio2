import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Widget child;
  final Function() onTap;

  Box({
    @required this.width,
    @required this.height,
    @required this.child,
    this.color = Colors.white,
    this.onTap,
  });

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipPath(
        clipper: BoxClip(),
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

class BoxClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    final w = size.width;
    final h = size.height;

    path.moveTo(w / 4, 0);
    path.lineTo(w * 3 / 4, 0);
    path.lineTo(w, h / 4);
    path.lineTo(w, h * 3 / 4);
    path.lineTo(w * 3 / 4, h);
    path.lineTo(w / 4, h);
    path.lineTo(0, h * 3 / 4);
    path.lineTo(0, h / 4);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
