import 'package:flutter/material.dart';
import 'package:portfolio2/ui/common/no_color_scroll_behaviour.dart';
import 'package:portfolio2/ui/home/home_black_part.dart';
import 'package:portfolio2/ui/home/home_white_part.dart';
import 'package:portfolio2/ui/home/home_yellow_part.dart';
import 'package:portfolio2/ui/home/info_dialog.dart';
import 'package:portfolio2/ui/home/other/home_black_buttons.dart';
import 'package:portfolio2/ui/home/other/home_name_header.dart';
import 'package:portfolio2/ui/home/other/home_yellow_buttons.dart';

bool wasShown = false;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (!wasShown) {
      wasShown = true;
      Future.delayed(const Duration(seconds: 1)).then((_) {
        showDialog(context: context, child: InfoDialog());
      });
    }

    final w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    double blackBaseHeight;
    if (w > HomeBlackButtons.neededWidthForHorizontal()) {
      blackBaseHeight = HomeBlackButtons.neededHeightForHorizontal();
    } else {
      blackBaseHeight = HomeBlackButtons.neededWidthForHorizontal();
    }

    double blackHeight = blackBaseHeight + 2 * 64 + 2 * 32;
    if (h > blackHeight + yellowBaseHeight() + whiteBaseHeight()) {
      blackHeight = h - yellowBaseHeight() - whiteBaseHeight();
    } else {
      h = yellowBaseHeight() + blackHeight + whiteBaseHeight();
    }

    return Scaffold(
      body: ScrollConfiguration(
        behavior: NoColorScrollBehavior(),
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Container(
              width: w,
              height: h,
              child: Stack(
                children: <Widget>[
                  Container(
                    width: w,
                    height: h,
                    child: Image.asset(
                      'assets/background.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: yellowBaseHeight()),
                    child: HomeBlackPart(w, blackHeight),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: HomeWhitePart(w, whiteHeight()),
                  ),
                  HomeYellowPart(w, yellowHeight()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  double yellowBaseHeight() {
    final nameH = HomeNameHeader.neededHeight();
    final yellowH = HomeYellowButtons.neededHeight();

    return nameH + yellowH;
  }

  double yellowHeight() {
    final nameH = HomeNameHeader.neededHeight();
    final yellowH = HomeYellowButtons.neededHeight();

    return yellowBaseHeight() + 64 + 32;
  }

  double whiteHeight() {
    return 196;
  }

  double whiteBaseHeight() {
    return 96;
  }

  double blackHeight(BuildContext context) {
    final h = MediaQuery.of(context).size.height;

    return h - yellowHeight() - whiteHeight();
  }
}
