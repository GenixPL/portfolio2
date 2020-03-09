import 'package:flutter/material.dart';
import 'package:portfolio2/ui/articles/common/article_header.dart';
import 'package:portfolio2/ui/articles/common/images.dart';
import 'package:portfolio2/ui/articles/common/play_store_link.dart';
import 'package:portfolio2/ui/articles/common/repo_link.dart';
import 'package:portfolio2/ui/articles/common/technologies_info.dart';
import 'package:portfolio2/ui/common/no_color_scroll_behaviour.dart';
import 'package:portfolio2/ui/top_bar/top_bar.dart';

class PictilePage extends StatelessWidget {
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
                            ArticleHeader('Pictile'),
                            SizedBox(height: 16),
                            Images([
                              'assets/pictile/screen_1.jpg',
                              'assets/pictile/screen_2.jpg',
                              'assets/pictile/screen_3.jpg',
                              'assets/pictile/screen_4.jpg',
                              'assets/pictile/screen_5.jpg',
                              'assets/pictile/screen_6.jpg',
                              'assets/pictile/screen_7.jpg',
                            ]),
                            SizedBox(height: 16),
                            PlayStoreLink('https://play.google.com/store/apps/details?id=com.genix.pictile'),
                            SizedBox(height: 16),
                            RepoLink('https://github.com/GenixPL/pictile'),
                            SizedBox(height: 16),
                            TechnologiesInfo(['Flutter', 'Dart', 'sqflite']),
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
