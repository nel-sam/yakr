import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yakr/src/ui/home.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final appTitle = 'Yakr';

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: appTitle,
      home: Home(
        title: appTitle,
      ),
    );
  }
}
