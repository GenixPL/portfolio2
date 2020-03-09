import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio2/themes/text_styles.dart';
import 'package:portfolio2/ui/common/edge_clip.dart';

class InfoDialog extends StatelessWidget {
  final double w = 400;
  final double h = 300;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Material(
          color: Colors.transparent,
          child: ClipPath(
            clipper: EdgeClip(28),
            child: Container(
              width: w,
              height: h,
              color: Colors.amber,
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: ClipPath(
                  clipper: EdgeClip(26),
                  child: Container(
                    width: w - 8,
                    height: h - 8,
                    color: Colors.red,
                    child: Column(
                      children: [
                        _buildTopRow(context),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            'This website was built in Flutter Web, which has many bugs and very poor performance. ' + 'For now its purpose is to present some of my skills, in the future, it will be rewritten in a proper web framework, and then it will also contain additional articles.',
                            style: normalText.copyWith(color: Colors.white),
                          ),
                        ),
                        Column(
	                        mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
	                            mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(FontAwesomeIcons.bug, color: Colors.white),
	                              SizedBox(width: 32),
	                              Icon(FontAwesomeIcons.spinner, color: Colors.white),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTopRow(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(child: Container()),
        Column(
          children: <Widget>[
            Text(
              'IMPORTANT',
              style: headerWhiteText(),
              textAlign: TextAlign.center,
            ),
            Text(
              'INFORMATION',
              style: headerWhiteText(),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                width: 32,
                height: 32,
                child: MaterialButton(
                  shape: CircleBorder(),
                  onPressed: () => Navigator.pop(context),
                  padding: const EdgeInsets.all(0),
                  child: Icon(
                    FontAwesomeIcons.times,
                    color: Colors.amber,
                  ),
                ),
              ),
              SizedBox(width: 16),
            ],
          ),
        ),
      ],
    );
  }
}
