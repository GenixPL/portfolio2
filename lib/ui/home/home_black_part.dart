import 'package:flutter/material.dart';
import 'package:portfolio2/ui/home/other/home_black_buttons.dart';

class HomeBlackPart extends StatelessWidget {
  final double w;
  final double h;

  HomeBlackPart(this.w, this.h);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _BlackClip(w, h),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (w > HomeBlackButtons.neededWidthForHorizontal())
              HomeBlackButtons(false)
            else
              HomeBlackButtons(true),
          ],
        ),
      ),
    );
  }
}

class _BlackClip extends CustomClipper<Path> {
  final double w;
  final double h;

  _BlackClip(this.w, this.h);

  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, 32);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height - 32);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
