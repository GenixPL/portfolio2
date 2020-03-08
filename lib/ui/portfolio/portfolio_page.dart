import 'package:flutter/material.dart';
import 'package:portfolio2/ui/portfolio/article_tile.dart';
import 'package:portfolio2/ui/top_bar/top_bar.dart';

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height - TopBar.height;

    return Scaffold(
      body: Column(
        children: <Widget>[
          TopBar(),
          Container(
            width: w,
            height: h,
            color: Colors.black87,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  ArticleTile(
                    child: Text('A'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
