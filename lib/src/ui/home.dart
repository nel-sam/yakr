import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yakr/src/blocs/theme_bloc.dart';
import 'package:yakr/src/blocs/theme_state.dart';

class Home extends StatefulWidget {
  static final textColor = Colors.grey[800];
  final appTitle = 'Yakr';

  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          theme: state.themeState.selectedTheme ??
              state.themeState.availableThemes["NorwayNights"],
          title: widget.appTitle,
          home: Scaffold(
            appBar: AppBar(
              title: Text(widget.appTitle),
              //textTheme: TextTheme(title: TextStyle(color: Home.textColor)),
              actions: [Icon(Icons.person_add)],
              //iconTheme: IconThemeData(color: Home.textColor),
              //backgroundColor: Colors.white70,
            ),
            body: Container(),
            bottomNavigationBar: BottomAppBar(
              child: Row(
                children: [
                  Icon(Icons.room, color: Home.textColor),
                  Icon(Icons.people_outline)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
