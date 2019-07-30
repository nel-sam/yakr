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
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Home.navKey,
      // theme: YakrThemes.availableThemes[state.selectedThemeKey] ??
      //     YakrThemes.availableThemes[YakrThemes.defaultTheme],
      title: widget.appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.appTitle),
          //textTheme: TextTheme(title: TextStyle(color: Home.textColor)),
          //iconTheme: IconThemeData(color: Home.textColor),
          //backgroundColor: Colors.white70,
        ),
        body: BlocProvider(
          builder: (context) => ThemeBloc(),
          child: BlocBuilder<ThemeBloc, ThemeState>(
              builder: (BuildContext context, ThemeState state) {
            return Container(
                child: Column(
              children: <Widget>[
                Text(state.selectedThemeKey),
                RaisedButton(
                    child: Text("Theme"),
                    onPressed: () {
                      final bloc = BlocProvider.of<ThemeBloc>(context);
                      //setState(() {
                      if (state.selectedThemeKey == YakrThemes.defaultTheme)
                        bloc.setTheme("DowntownOslo");
                      else
                        bloc.setTheme(YakrThemes.defaultTheme);
                      //});
                    })
              ],
            ));
          }),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: [
              Icon(Icons.room, color: Home.textColor),
            ],
          ),
        ),
      ),
    );
  }
}
