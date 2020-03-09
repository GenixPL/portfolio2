import 'package:flutter/material.dart';

class EdgeClip extends CustomClipper<Path> {
  final double cutSize;

  EdgeClip(this.cutSize);

  @override
  Path getClip(Size size) {
    Path path = Path();

    final w = size.width;
    final h = size.height;

    path.moveTo(cutSize, 0);
    path.lineTo(w - cutSize, 0);
    path.lineTo(w, cutSize);
    path.lineTo(w, h - cutSize);
    path.lineTo(w - cutSize, h);
    path.lineTo(cutSize, h);
    path.lineTo(0, h - cutSize);
    path.lineTo(0, cutSize);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
