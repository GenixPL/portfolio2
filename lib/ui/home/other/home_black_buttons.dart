import 'package:flutter/material.dart';
import 'package:portfolio2/navigation/routes.dart';
import 'package:portfolio2/ui/home/other/home_black_box.dart';

class HomeBlackButtons extends StatelessWidget {
  final bool isVertical;

  static const double _padding = 32;

  HomeBlackButtons(this.isVertical);

  static double neededWidthForHorizontal() {
    final paddingSize = 4 * _padding;
    final buttonsWidth = 3 * HomeBlackBox.width;

    return paddingSize + buttonsWidth;
  }
  
  static double neededHeightForHorizontal() {
    final paddingSize = 2 * _padding;

    return paddingSize + HomeBlackBox.height;
  }

  @override
  Widget build(BuildContext context) {
    if (isVertical) {
      return Padding(
        padding: const EdgeInsets.all(_padding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildResume(context),
            SizedBox(height: _padding),
            _buildPortfolio(context),
            SizedBox(height: _padding),
            _buildContact(context),
          ],
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(_padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildResume(context),
          SizedBox(width: _padding),
          _buildPortfolio(context),
          SizedBox(width: _padding),
          _buildContact(context),
        ],
      ),
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
