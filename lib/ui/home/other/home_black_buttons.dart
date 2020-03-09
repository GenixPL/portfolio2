import 'package:flutter/material.dart';
import 'package:portfolio2/navigation/routes.dart';
import 'package:portfolio2/ui/home/other/home_black_box.dart';

class HomeBlackButtons extends StatelessWidget {
  final bool isVertical;
  
  static final double _padding = 32;
  static final double _sidePadding = 32;

  HomeBlackButtons(this.isVertical);

  static double neededWidthForHorizontal() {
  	final sidePadding = 2 * _sidePadding;
  	final middlePadding = 2 * _padding;
  	final buttonsWidth = 3 * HomeBlackBox.width;
  	
  	return sidePadding + middlePadding + buttonsWidth;
  }
  
  @override
  Widget build(BuildContext context) {
    if (isVertical) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildResume(context),
          SizedBox(height: 32),
          _buildPortfolio(context),
          SizedBox(height: 32),
          _buildContact(context),
        ],
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildResume(context),
        SizedBox(width: 32),
        _buildPortfolio(context),
        SizedBox(width: 32),
        _buildContact(context),
      ],
    );
  }

  Widget _buildResume(BuildContext context) {
    return HomeBlackBox(
      onTap: () => _moveToResume(context),
      iconData: Icons.account_box,
      text: 'RESUME',
    );
  }

  Widget _buildPortfolio(BuildContext context) {
    return HomeBlackBox(
      onTap: () => _moveToPortfolio(context),
      iconData: Icons.important_devices,
      text: 'PORTFOLIO',
    );
  }

  Widget _buildContact(BuildContext context) {
    return HomeBlackBox(
      onTap: () => _moveToContact(context),
      iconData: Icons.insert_comment,
      text: 'CONTACT',
    );
  }

  // FUNCTIONS

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
