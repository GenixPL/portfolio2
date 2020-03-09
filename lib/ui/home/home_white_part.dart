import 'package:flutter/material.dart';

class HomeWhitePart extends StatelessWidget {
  final double w;
  final double h;

  HomeWhitePart(this.w, this.h);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _WhiteClip(),
      child: Container(
        width: w,
        height: h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Colors.white.withOpacity(0.2),
              Colors.white.withOpacity(1.0),
            ],
          ),
        ),
      ),
    );
  }
}

class _WhiteClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(size.width, size.height * 0.2);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
