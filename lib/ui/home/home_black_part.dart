import 'package:flutter/material.dart';

class HomeBlackPart extends StatelessWidget {
  final double w;
  final double h;

  HomeBlackPart(this.w, this.h);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _BlackClip(),
      child: Container(
        width: w,
        height: h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Colors.black.withOpacity(1.0),
              Colors.black.withOpacity(0.2),
            ],
          ),
        ),
      ),
    );
  }
}

class _BlackClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, size.height * 0.45);
    path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, size.height * 0.85);
    path.lineTo(0, size.height * 0.75);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
