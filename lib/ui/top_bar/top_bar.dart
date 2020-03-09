import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio2/main.dart';
import 'package:portfolio2/navigation/routes.dart';
import 'package:portfolio2/themes/text_styles.dart';

import '../../main.dart';
import '../../navigation/routes.dart';

class TopBar extends StatelessWidget {
  
  static double neededHeight(double screenWidth) {
    if (screenWidth < 646) {
      return 142;
    }
    
    return 64;
  }
  
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    
    if (w < 646) {
      return Container(
        height: 142,
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 8),
            _buildHomeButton(context),
            SizedBox(height: 8),
            _buildResumeButton(context),
            SizedBox(height: 8),
            _buildPortfolioButton(context),
            SizedBox(height: 8),
            _buildContactButton(context),
            SizedBox(height: 8),
          ],
        ),
      );
    }
    
    return Container(
      height: 64,
      color: Colors.amber,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildHomeButton(context),
          SizedBox(width: 32),
          _buildResumeButton(context),
          SizedBox(width: 32),
          _buildPortfolioButton(context),
          SizedBox(width: 32),
          _buildContactButton(context),
        ],
      ),
    );
  }

  Widget _buildHomeButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (router.lastRoute != homeRoute) {
          Navigator.pushNamed(context, homeRoute);
        }
      },
      child: _buildText(
        'HOME',
        router.lastRoute == homeRoute ? 20 : 16,
      ),
    );
  }

  Widget _buildResumeButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (router.lastRoute != resumeRoute) {
          Navigator.pushNamed(context, resumeRoute);
        }
      },
      child: _buildText(
        'RESUME',
        router.lastRoute == resumeRoute ? 20 : 16,
      ),
    );
  }

  Widget _buildPortfolioButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (router.lastRoute != portfolioRoute) {
          Navigator.pushNamed(context, portfolioRoute);
        }
      },
      child: _buildText(
        'PORTFOLIO',
        router.lastRoute == portfolioRoute ? 20 : 16,
      ),
    );
  }

  Widget _buildContactButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (router.lastRoute != contactRoute) {
          Navigator.pushNamed(context, contactRoute);
        }
      },
      child: _buildText(
        'CONTACT',
        router.lastRoute == contactRoute ? 20 : 16,
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
