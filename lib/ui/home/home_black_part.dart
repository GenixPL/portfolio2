import 'package:flutter/material.dart';
import 'package:portfolio2/icons/my_icons_icons.dart';
import 'package:portfolio2/navigation/routes.dart';
import 'package:portfolio2/themes/text_styles.dart';
import 'package:portfolio2/ui/common/box/box.dart';

class HomeBlackPart extends StatelessWidget {
  final double w;
  final double h;

  HomeBlackPart(this.w, this.h);

  @override
  Widget build(BuildContext context) {
    final int numOfBoxes = 3;
    final double padding = 32;
    double boxSize = (w - (2 * padding) - (numOfBoxes * padding)) / numOfBoxes;

    if (boxSize > h * 0.2) {
      boxSize = h * 0.2;
    }

    if (boxSize > 124) {
      boxSize = 124;
    }

    return Stack(
      children: [
        ClipPath(
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
        ),
        Padding(
          padding: EdgeInsets.only(top: h * 0.45),
          child: Container(
            width: w,
            height: h * 0.3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildResume(context, boxSize),
                SizedBox(width: padding),
                _buildPortfolio(context, boxSize),
                SizedBox(width: padding),
                _buildContact(context, boxSize),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPortfolio(BuildContext context, double size) {
    return Box(
      onTap: () => _moveToPortfolio(context),
      width: size,
      height: size,
      color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 20,
            width: 32,
            child: Icon(MyIcons.portfolio__1_),
          ),
          SizedBox(height: 8),
          Text(
            'PORTFOLIO',
            style: headerText,
            maxLines: 1,
          ),
        ],
      ),
    );
  }

  Widget _buildResume(BuildContext context, double size) {
    return Box(
      onTap: () => _moveToResume(context),
      width: size,
      height: size,
      color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 20,
            width: 32,
            child: Icon(Icons.account_box),
          ),
          SizedBox(height: 8),
          Text(
            'RESUME',
            style: headerText,
            maxLines: 1,
          ),
        ],
      ),
    );
  }

  Widget _buildContact(BuildContext context, double size) {
    return Box(
      onTap: () => _moveToContact(context),
      width: size,
      height: size,
      color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 20,
            width: 32,
            child: Icon(Icons.comment),
          ),
          SizedBox(height: 8),
          Text(
            'CONTACT',
            style: headerText,
            maxLines: 1,
          ),
        ],
      ),
    );
  }

  // FUNCATIONS

  _moveToPortfolio(BuildContext context) {
    Navigator.pushNamed(context, portfolioRoute);
  }

  _moveToResume(BuildContext context) {
    Navigator.pushNamed(context, resumeRoute);
  }

  _moveToContact(BuildContext context) {
    Navigator.pushNamed(context, contactRoute);
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
