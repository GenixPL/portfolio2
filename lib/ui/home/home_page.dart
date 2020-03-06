import 'package:flutter/material.dart';
import 'package:portfolio2/ui/home/home_black_part.dart';
import 'package:portfolio2/ui/home/home_white_part.dart';
import 'package:portfolio2/ui/home/home_yellow_part.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  width: w,
                  height: h,
                  child: Image.asset(
                    'assets/background_empty.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                HomeYellowPart(w, h),
                HomeWhitePart(w, h),
                HomeBlackPart(w, h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
