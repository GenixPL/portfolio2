import 'package:flutter/material.dart';
import 'package:portfolio2/themes/text_styles.dart';
import 'package:portfolio2/ui/common/box/box.dart';
import 'package:portfolio2/ui/common/box/no_color_scroll_behaviour.dart';
import 'package:portfolio2/ui/portfolio/article_tile.dart';
import 'package:portfolio2/ui/top_bar/top_bar.dart';

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height - TopBar.height;

    //todo add minimal h (tile + padding)
    

    return Scaffold(
      body: Column(
        children: <Widget>[
          TopBar(),
          _buildUpperPart(w, h / 2),
          _buildLowerPart(w, h / 2),
        ],
      ),
    );
  }

  Widget _buildUpperPart(double w, double h) {
    return Container(
      width: w,
      height: h,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/mountains_2.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black87,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 232 + ArticleTile.outerWidth * 3.5 + 2 * 16),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'DEVELOPED',
                            style: headerText.copyWith(
                              color: Colors.white,
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            'APPS',
                            style: headerText.copyWith(
                              color: Colors.white,
                              fontSize: 32,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 32),
                    Flexible(
                      child: ScrollConfiguration(
                        behavior: NoColorScrollBehavior(),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              ArticleTile(
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Image.asset(
                                      'assets/placelytics/logo.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                    Container(color: Colors.black54),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Container(
                                          width: ArticleTile.innerWidth,
                                          height: ArticleTile.innerHeight / 2,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Placelytics',
                                              style: normalText.copyWith(
                                                color: Colors.white,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 16),
                              ArticleTile(
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Image.asset(
                                      'assets/thg/logo.png',
                                      fit: BoxFit.cover,
                                    ),
                                    Container(color: Colors.black54),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Container(
                                          width: ArticleTile.innerWidth,
                                          height: ArticleTile.innerHeight / 2,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'The Hardest Game',
                                              style: normalText.copyWith(
                                                color: Colors.white,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 16),
                              ArticleTile(
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Image.asset(
                                      'assets/pictile/logo.png',
                                      fit: BoxFit.cover,
                                    ),
                                    Container(color: Colors.black54),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Container(
                                          width: ArticleTile.innerWidth,
                                          height: ArticleTile.innerHeight / 2,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Pictile',
                                              style: normalText.copyWith(
                                                color: Colors.white,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
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
  
  Widget _buildLowerPart(double w, double h) {
    return Container(
      width: w,
      height: h,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/mountains_1.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black87,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 232 + ArticleTile.outerWidth * 3.5 + 2 * 16),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'OTHER',
                            style: headerText.copyWith(
                              color: Colors.white,
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            'ARTICLES',
                            style: headerText.copyWith(
                              color: Colors.white,
                              fontSize: 32,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 32),
                    Flexible(
                      child: ScrollConfiguration(
                        behavior: NoColorScrollBehavior(),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              ArticleTile(
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Image.asset(
                                      'assets/notes.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                    Container(color: Colors.black54),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Container(
                                          width: ArticleTile.innerWidth,
                                          height: ArticleTile.innerHeight / 2,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Algorithms',
                                              style: normalText.copyWith(
                                                color: Colors.white,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 16),
                              ArticleTile(
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Image.asset(
                                      'assets/squares.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                    Container(color: Colors.black54),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Container(
                                          width: ArticleTile.innerWidth,
                                          height: ArticleTile.innerHeight / 2,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Animations',
                                              style: normalText.copyWith(
                                                color: Colors.white,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              
                            ],
                          ),
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
