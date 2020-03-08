import 'package:flutter/material.dart';

class ArticleTile extends StatelessWidget {
  static double innerHeight = 300;
  static double innerWidth = 200;
  static double outerHeight = 312;
  static double outerWidth = 212;

  final Widget child;
  final Function() onTap;

  ArticleTile({
    @required this.child,
    this.onTap,
  });

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipPath(
        clipper: ArticleTileClip(16),
        child: Container(
          width: outerWidth,
          height: outerHeight,
          color: Colors.amber,
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: ClipPath(
              clipper: ArticleTileClip(12),
              child: SizedBox(
                width: innerWidth,
                height: innerHeight,
                child: Center(child: child),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ArticleTileClip extends CustomClipper<Path> {
  final double cutSize;

  ArticleTileClip(this.cutSize);

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
