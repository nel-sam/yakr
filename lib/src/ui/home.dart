import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yakr/src/blocs/theme_bloc.dart';
import 'package:yakr/src/blocs/theme_state.dart';
import 'package:yakr/src/ui/settings_modal.dart';

class Home extends StatefulWidget {
  static final textColor = Colors.grey[800];
  final appTitle = 'Yakr';
  static final navKey = new GlobalKey<NavigatorState>();

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
          navigatorKey: Home.navKey,
          theme: state.themeState.selectedTheme ??
              state.themeState.availableThemes["NorwayNights"],
          title: widget.appTitle,
          home: Scaffold(
            appBar: AppBar(
              title: Text(widget.appTitle),
              //textTheme: TextTheme(title: TextStyle(color: Home.textColor)),
              actions: [
                IconButton(
                  // padding: EdgeInsets.all(10),
                  icon: Icon(Icons.settings),
                  onPressed: () {
                    showDialog(
                      context: Home.navKey.currentState.overlay.context,
                      builder: (BuildContext bContext) =>
                          SettingsModal(parentContext: bContext),
                    );
                  },
                )
              ],
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
