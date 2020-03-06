import 'package:flutter/material.dart';
import 'package:portfolio2/navigation/router.dart';
import 'package:portfolio2/navigation/routes.dart';

void main() {
  runApp(MyApp());
}

final router = Router();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: homeRoute,
      onGenerateRoute: router.generateRoute,
    );
  }
}
