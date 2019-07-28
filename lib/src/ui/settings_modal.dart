import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yakr/src/blocs/theme_bloc.dart';

class SettingsModal extends StatefulWidget {
  final BuildContext parentContext;

  SettingsModal({Key key, this.parentContext});

  @override
  _SettingsModalState createState() => _SettingsModalState();
}

class _SettingsModalState extends State<SettingsModal> {
  ThemeBloc _themeBloc;
  List<RaisedButton> themeButtons;

  @override
  void initState() {
    super.initState();
    _themeBloc = BlocProvider.of<ThemeBloc>(context);
    themeButtons = _themeBloc.currentState.themeState.availableThemes
                    .map((t) => RaisedButton(
                      onPressed: () => _themeBloc.setTheme(t),
                      color: _themeBloc.currentState.themeState.availableThemes[t].accentColor,
                      child: _themeBloc.currentState.themeState.selectedTheme
                    ));
  }
  
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
            title: Text(
              "Settings",
              style: TextStyle(
                  color: Theme.of(widget.parentContext).primaryTextTheme.display1.color),
            ),
            content: Row(
          children: themeButtons ?? [Container()],
              ),
            contentPadding: EdgeInsets.all(10),
            actions: [
              FlatButton(
                child: Text("Close"),
                onPressed: () {
                  Navigator.of(widget.parentContext).pop();
                },
              ),
            ],
          )
  }
}