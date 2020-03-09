import 'package:flutter/material.dart';
import 'package:portfolio2/ui/home/other/home_name_header.dart';
import 'package:portfolio2/ui/home/other/home_yellow_buttons.dart';

class HomeYellowPart extends StatelessWidget {
  final double w;
  final double h;

  HomeYellowPart(this.w, this.h);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _YellowClip(w, h),
      child: Container(
        width: w,
        height: h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Colors.amber.withOpacity(1.0),
              Colors.amber.withOpacity(0.2),
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            HomeNameHeader(),
            HomeYellowButtons(),
          ],
        ),
      ),
    );
  }
}

class _YellowClip extends CustomClipper<Path> {
  final double w;
  final double h;
  
  _YellowClip(this.w, this.h);
  
  @override
  Path getClip(Size size) {
    Path path = Path();
    
    path.lineTo(0, h);
    path.lineTo(w, h - 64);
    path.lineTo(w, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
