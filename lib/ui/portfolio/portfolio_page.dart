import 'package:flutter/material.dart';
import 'package:portfolio2/ui/top_bar.dart';

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          TopBar(),
          Text('PORTFOLIO PAGE'),
        ],
      ),
    );
  }

}