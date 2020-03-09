import 'dart:html';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

// https://github.com/flutter/flutter_web/blob/master/examples/html_platform_view/lib/main.dart
// https://stackoverflow.com/questions/58150503/webview-in-flutter-web

class YouTubePlayer extends StatelessWidget {
  final String url;

  YouTubePlayer(this.url);

  @override
  Widget build(BuildContext context) {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      url,
      (int viewId) => IFrameElement()
        ..src = url
        ..style.border = 'none',
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Flexible(
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
	              color: Colors.amber,
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: HtmlElementView(viewType: url),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
