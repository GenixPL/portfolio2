import 'package:flutter/material.dart';
import 'package:portfolio2/ui/articles/common/article_header.dart';
import 'package:portfolio2/ui/articles/common/technologies_info.dart';
import 'package:portfolio2/ui/articles/common/youtube_player.dart';
import 'package:portfolio2/ui/common/no_color_scroll_behaviour.dart';
import 'package:portfolio2/ui/top_bar/top_bar.dart';

class PlacelyticsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height - TopBar.neededHeight(w);

    return Scaffold(
      body: Column(
        children: <Widget>[
          TopBar(),
          Container(
            width: w,
            height: h,
            color: Colors.black87,
            child: ScrollConfiguration(
              behavior: NoColorScrollBehavior(),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 800),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: <Widget>[
                            ArticleHeader('Placelytics'),
                            SizedBox(height: 16),
                            YouTubePlayer('https://www.youtube.com/embed/h5CSd-B2x0w'),
                            SizedBox(height: 16),
                            TechnologiesInfo([
                              'Flutter',
                              'Dart',
                              'Rive',
                              'Firestore',
                              'Firebase Auth',
                            ]),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
