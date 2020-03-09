import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio2/themes/text_styles.dart';

class PlayStoreLink extends StatelessWidget {
  final String url;

  PlayStoreLink(this.url);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
	        width: 24,
          height: 24,
          child: Icon(
            FontAwesomeIcons.googlePlay,
            color: Colors.white,
            size: 20,
          ),
        ),
        SizedBox(width: 8),
        Text(
          'Google Play link:',
          style: normalText.copyWith(color: Colors.white),
        ),
        SizedBox(width: 8),
        Flexible(
          child: GestureDetector(
            onTap: _moveToUrl,
            child: Text(
              url,
              style: normalText.copyWith(
                color: Colors.blue,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }

  _moveToUrl() {
    js.context.callMethod('open', [
      url,
    ]);
  }
}
