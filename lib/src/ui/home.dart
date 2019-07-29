import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yakr/src/blocs/theme_bloc.dart';
import 'package:yakr/src/blocs/theme_state.dart';
import 'package:yakr/src/ui/yakr_themes.dart';

class Home extends StatefulWidget {
  static final textColor = Colors.grey[800];
  final appTitle = 'Yakr';
  static final navKey = new GlobalKey<NavigatorState>();

  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  ThemeBloc _themeBloc;

  @override
  initState() {
    super.initState();
    _themeBloc = BlocProvider.of<ThemeBloc>(context);
  }

  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          navigatorKey: Home.navKey,
          theme: YakrThemes.availableThemes[state.selectedThemeKey] ??
              YakrThemes.availableThemes[YakrThemes.defaultTheme],
          title: widget.appTitle,
          home: Scaffold(
            appBar: AppBar(
              title: Text(widget.appTitle),
              //textTheme: TextTheme(title: TextStyle(color: Home.textColor)),
              actions: [
                IconButton(
                  icon: Icon(Icons.collections),
                  onPressed: () {
                    setState(() {
                      if (state.selectedThemeKey == YakrThemes.defaultTheme)
                        _themeBloc.setTheme("DowntownOslo");
                      else
                        _themeBloc.setTheme(YakrThemes.defaultTheme);
                   });
                  },
                )
              ],
              //iconTheme: IconThemeData(color: Home.textColor),
              //backgroundColor: Colors.white70,
            ),
            body: Container(
              child: Text(state.selectedThemeKey),
            ),
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
