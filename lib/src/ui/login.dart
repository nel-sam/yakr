import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yakr/src/blocs/theme_bloc.dart';
import 'package:yakr/src/providers/auth_provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  ThemeBloc _themeBloc;

  @override
  initState() {
    super.initState();
    _themeBloc = BlocProvider.of<ThemeBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: RaisedButton(
        child: Text('Login'),
        onPressed: () {
          AuthProvider().login();
        },
      ),
    ));
  }
}
