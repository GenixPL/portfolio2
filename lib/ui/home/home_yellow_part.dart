import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio2/themes/text_styles.dart';
import 'package:portfolio2/ui/common/box/box.dart';

class HomeYellowPart extends StatelessWidget {
  final double w;
  final double h;

  HomeYellowPart(this.w, this.h);

  @override
  Widget build(BuildContext context) {
    final double fontSize = 32;
    final double boxSize = 48;

    return Stack(
      children: [
        ClipPath(
          clipper: _YellowClip(),
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
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                children: <Widget>[
                  Text(
                    'łukASZ',
                    style: homeHeaderText,
                  ),
                  Text(
                    'NieDZiAłek',
                    style: homeHeaderText,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Box(
                          onTap: _moveToGithub,
                          width: boxSize,
                          height: boxSize,
                          color: Colors.black,
                          child: Icon(
                            FontAwesomeIcons.github,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 16),
                        Box(
                          onTap: _moveToYoutube,
                          width: boxSize,
                          height: boxSize,
                          color: Colors.red,
                          child: Container(
                            width: 32,
                            child: Icon(
                              FontAwesomeIcons.youtube,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Box(
                          onTap: _moveToRive,
                          width: boxSize,
                          height: boxSize,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('assets/rive_icon.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  _moveToGithub() {
    js.context.callMethod('open', ['https://github.com/GenixPL']);
  }

  _moveToYoutube() {
    js.context.callMethod('open', [
      'https://www.youtube.com/channel/UC8iFSZEpTSbq8ActXXbvyfw?view_as=subscriber'
    ]);
  }

  _moveToRive() {
    js.context.callMethod('open', [
      'https://rive.app/a/Genix/files/recent/all',
    ]);
  }
}

class _YellowClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height * 0.5);
    path.lineTo(size.width, size.height * 0.33);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
