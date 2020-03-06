import 'package:flutter/material.dart';
import 'package:portfolio2/navigation/routes.dart';
import 'package:portfolio2/ui/contact/contact_page.dart';
import 'package:portfolio2/ui/home/home_page.dart';
import 'package:portfolio2/ui/portfolio/portfolio_page.dart';
import 'package:portfolio2/ui/resume/resume_page.dart';
import 'package:portfolio2/utils/logger.dart';

import './stack.dart' as s;

class Router with NavigatorObserver {
  static const String _TAG = 'RouteGenerator';

  s.Stack<String> _routes = s.Stack();

  get lastRoute => _routes.top();

  Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    _routes.push(settings.name);
    Log.d(_TAG, 'generateRoute (${settings.name})');

    if (settings.name == homeRoute) {
      return MaterialPageRoute(builder: (_) => HomePage(), settings: settings);
      //
    } else if (settings.name.contains(portfolioRoute)) {
      return MaterialPageRoute(
        builder: (_) => PortfolioPage(),
        settings: settings,
      );
      //
    } else if (settings.name.contains(resumeRoute)) {
      return MaterialPageRoute(
        builder: (_) => ResumePage(),
        settings: settings,
      );
      //
    } else if (settings.name.contains(contactRoute)) {
      return MaterialPageRoute(
        builder: (_) => ContactPage(),
        settings: settings,
      );
      //
    } else {
      return _errorRoute('No path specified for: ${settings.name}');
    }
  }

  Route<dynamic> _errorRoute(String msg) {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        body: Center(
          child: Text('ERROR ROUTE \n$msg'),
        ),
      );
    });
  }

  @override
  void didPop(Route route, Route previousRoute) {
    if (route is MaterialPageRoute) {
      _routes.pop();
      Log.d(_TAG, 'popped page');
    } else {
      Log.d(_TAG, 'popped not page');
    }

    super.didPop(route, previousRoute);
  }

  // Navigator.pushNamedAndRemoveUntil should be used only with
  // homeRoute being pushed.
  @override
  void didRemove(Route route, Route previousRoute) {
    var top = lastRoute;
    if (top == homeRoute) {
      _routes = s.Stack();
      _routes.push(homeRoute);
    } else {
      _routes = s.Stack();
      _routes.push(homeRoute);
      _routes.push(top);
    }

    super.didRemove(route, previousRoute);
  }
}
