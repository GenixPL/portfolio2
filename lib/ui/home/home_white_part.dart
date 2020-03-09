import 'package:flutter/material.dart';

class HomeWhitePart extends StatelessWidget {
  final double w;
  final double h;

  HomeWhitePart(this.w, this.h);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _WhiteClip(w, h),
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
  final double w;
  final double h;
  
  _WhiteClip(this.w, this.h);
  
  @override
  Path getClip(Size size) {
    Path path = Path();
    
    path.lineTo(w, 64);
    path.lineTo(w, h);
    path.lineTo(0, h);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
