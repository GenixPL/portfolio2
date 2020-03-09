import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio2/ui/home/other/home_yellow_box.dart';

class HomeYellowButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      alignment: WrapAlignment.center,
      children: <Widget>[
        HomeYellowBox(
          child: Icon(
            FontAwesomeIcons.github,
            color: Colors.white,
          ),
          onTap: _moveToGithub,
        ),
        HomeYellowBox(
          color: Colors.red,
          child: Container(
            width: 32,
            height: 32,
            child: Icon(
              FontAwesomeIcons.youtube,
              color: Colors.white,
            ),
          ),
          onTap: _moveToYoutube,
        ),
        HomeYellowBox(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/rive_icon.png'),
          ),
          onTap: _moveToRive,
        ),
        HomeYellowBox(
          color: Color(0xFFECDEC4),
          child: Icon(
            FontAwesomeIcons.goodreadsG,
            color: Colors.brown[900],
          ),
          onTap: _moveToGoodreads,
        ),
      ],
    );
  }

  // FUNCTIONS

  _moveToGithub() {
    js.context.callMethod('open', ['https://github.com/GenixPL']);
  }

  _moveToYoutube() {
    js.context.callMethod('open', ['https://www.youtube.com/channel/UC8iFSZEpTSbq8ActXXbvyfw?view_as=subscriber']);
  }

  _moveToRive() {
    js.context.callMethod('open', [
      'https://rive.app/a/Genix/files/recent/all',
    ]);
  }

  _moveToGoodreads() {
    js.context.callMethod('open', [
      'https://www.goodreads.com/user/show/86850107-lukasz',
    ]);
  }
}
