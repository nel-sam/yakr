
import 'package:flutter/material.dart';
import 'package:yakr/src/ui/home.dart';
import 'package:yakr/src/ui/login.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {

//    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/home':
        return MaterialPageRoute(
          builder: (_) => Home(),
        );
      default:
        return MaterialPageRoute(builder: (_) => LoginPage());
    }

  }
}