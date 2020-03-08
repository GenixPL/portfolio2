import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio2/main.dart';
import 'package:portfolio2/navigation/routes.dart';
import 'package:portfolio2/themes/text_styles.dart';

class TopBar extends StatelessWidget {
  static final double height = 64;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, homeRoute),
            child: _buildText(
              'HOME',
              router.lastRoute == homeRoute ? 20 : 16,
            ),
          ),
          SizedBox(width: 32),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, resumeRoute),
            child: _buildText(
              'RESUME',
              router.lastRoute == resumeRoute ? 20 : 16,
            ),
          ),
          SizedBox(width: 32),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, portfolioRoute),
            child: _buildText(
              'PORTFOLIO',
              router.lastRoute == portfolioRoute ? 20 : 16,
            ),
          ),
          SizedBox(width: 32),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, contactRoute),
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
    return Text(
      text,
      style: headerText.copyWith(
        fontSize: size,
      ),
      maxLines: 1,
    );
  }
}
