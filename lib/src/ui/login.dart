import 'package:flutter/material.dart';
import 'package:yakr/src/blocs/blocs.dart';
import 'package:yakr/src/providers/auth_provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final authProvider = AuthProvider();

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: RaisedButton(
        child: Text('Login'),
        onPressed: () {
          authProvider.login().then(
              (a) => Navigator.of(context).pushNamed('/home')); //.catchError();
        },
      ),
    ));
  }
}
