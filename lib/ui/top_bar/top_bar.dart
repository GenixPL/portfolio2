import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio2/main.dart';
import 'package:portfolio2/navigation/routes.dart';
import 'package:portfolio2/themes/text_styles.dart';

import '../../main.dart';
import '../../navigation/routes.dart';

class TopBar extends StatelessWidget {
  static final double height = 64;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: Colors.amber,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              if (router.lastRoute != homeRoute) {
                Navigator.pushNamed(context, homeRoute);
              }
            },
            child: _buildText(
              'HOME',
              router.lastRoute == homeRoute ? 20 : 16,
            ),
          ),
          SizedBox(width: 32),
          GestureDetector(
            onTap: () {
              if (router.lastRoute != resumeRoute) {
                Navigator.pushNamed(context, resumeRoute);
              }
            },
            child: _buildText(
              'RESUME',
              router.lastRoute == resumeRoute ? 20 : 16,
            ),
          ),
          SizedBox(width: 32),
          GestureDetector(
            onTap: () {
              if (router.lastRoute != portfolioRoute) {
                Navigator.pushNamed(context, portfolioRoute);
              }
            },
            child: _buildText(
              'PORTFOLIO',
              router.lastRoute == portfolioRoute ? 20 : 16,
            ),
          ),
          SizedBox(width: 32),
          GestureDetector(
            onTap: () {
              if (router.lastRoute != contactRoute) {
                Navigator.pushNamed(context, contactRoute);
              }
            },
            child: _buildText(
              'CONTACT',
              router.lastRoute == contactRoute ? 20 : 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildText(String text, double size) {
    return Container(
      color: Colors.transparent,
      child: Center(
        child: Text(
          text,
          style: headerText.copyWith(
            fontSize: size,
          ),
          maxLines: 1,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
