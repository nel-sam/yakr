import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yakr/src/blocs/blocs.dart';
import 'package:yakr/src/providers/auth_provider.dart';
import 'package:yakr/src/ui/yakr_themes.dart';

import 'bottom_nav/fab_bottom_app_bar.dart';
import 'bottom_nav/fab_with_icons.dart';
import 'bottom_nav/layout.dart';

class Home extends StatefulWidget {
  static final textColor = Colors.grey[800];

  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  ThemeBloc _themeBloc;
  final authProvider = AuthProvider();

  @override
  initState() {
    super.initState();
    _themeBloc = BlocProvider.of<ThemeBloc>(context);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yakr'),
        actions: [
          IconButton(
            icon: Icon(Icons.collections),
            onPressed: () {
              if (_themeBloc.currentState.selectedThemeKey ==
                  YakrThemes.defaultTheme) {
                _themeBloc.changeTheme(ThemeKeys.downtownOslo);
              } else
                _themeBloc.changeTheme(YakrThemes.defaultTheme);
            },
          )
        ],
      ),
      body: Column(
        children: [
          Text('Home page', style: TextStyle(fontSize: 80)),
          RaisedButton(
            child: Text('Logout'),
            onPressed: () {
              authProvider.logout().then(
                  (a) => Navigator.of(context).pushNamed('/')); //.catchError();
            },
          )
        ],
      ),
      bottomNavigationBar: FABBottomAppBar(
        color: Colors.grey,
        selectedColor: Colors.red,
        notchedShape: CircularNotchedRectangle(),
        //onTabSelected: _selectedTab,
        items: [
          FABBottomAppBarItem(iconData: Icons.chat, text: 'Messages'),
          FABBottomAppBarItem(iconData: Icons.web, text: 'Rooms'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _buildFab(context),
    );
  }

  Widget _buildFab(BuildContext context) {
    final icons = [Icons.sms, Icons.mail, Icons.phone];
    return AnchoredOverlay(
      showOverlay: true,
      overlayBuilder: (context, offset) {
        return CenterAbout(
          //position: Offset(offset.dx, offset.dy - icons.length * 35.0),
          child: FabWithIcons(
            icons: icons,
            //onIconTapped: _selectedFab,
          ),
        );
      },
      child: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add',
        child: Icon(Icons.add),
        elevation: 2.0,
      ),
    );
  }
}
