import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  static final textColor = Colors.grey[800];
  final String title;

  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          textTheme: TextTheme(title: TextStyle(color: Home.textColor)),
          actions: [
            Icon(Icons.person_add)
            ],
            iconTheme: IconThemeData(color: Home.textColor),
            backgroundColor: Colors.white70,
        ),
        body: Container(),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: [
              Icon(Icons.room, color: Home.textColor),
              Icon(Icons.people_outline)
            ],
          )
        ),
        );

  }
}
