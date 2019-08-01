import 'package:flutter/material.dart';
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset('./assets/yakrlogo_clear.png'),
          RaisedButton(

            child: Padding(padding: EdgeInsets.all(10),child: Text('Login', style: TextStyle(fontSize: 40))),
            onPressed: () {
              authProvider.login().then(
                  (a) => Navigator.of(context).pushNamed('/home')); //.catchError();
            },
          ),
        ],
      ),
    ));
  }
}
