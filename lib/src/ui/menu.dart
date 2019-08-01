import 'package:flutter/material.dart';
import 'package:yakr/src/providers/auth_provider.dart';

class Menu extends StatefulWidget {
  final authProvider = AuthProvider();

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 100,
      child: ListView(
        children: [
          Container(
            height: 50.0,
            child: DrawerHeader(
              child: Text('Menu'),
            ),
          ),
          RaisedButton(
            child: Text('Logout'),
            onPressed: () {
              widget.authProvider.logout().then(
                  (a) => Navigator.of(context).pushNamed('/')); //.catchError();
            },
          )
        ],
      ),
    );
  }
}
