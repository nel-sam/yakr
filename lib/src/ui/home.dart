import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yakr/src/blocs/blocs.dart';
import 'package:yakr/src/ui/rooms.dart';
import 'package:yakr/src/ui/yakr_themes.dart';

import 'bottom_nav/fab_bottom_app_bar.dart';
import 'bottom_nav/fab_with_icons.dart';
import 'bottom_nav/layout.dart';
import 'menu.dart';
import 'messages.dart';

class Home extends StatefulWidget {
  static final textColor = Colors.grey[800];

  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  ThemeBloc _themeBloc;
  PageController _pageController;

  @override
  initState() {
    super.initState();
    _themeBloc = BlocProvider.of<ThemeBloc>(context);
    _pageController = PageController();
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
      drawer: Menu(),
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          Messages(),
          Rooms()
        ],
      ) ,
      bottomNavigationBar: FABBottomAppBar(
        color: Colors.grey,
        selectedColor: Colors.red,
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: (int i) {
          _pageController.animateToPage(i, duration: Duration(milliseconds: 320), curve: Curves.easeOut);
        },
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
    final icons = [Icons.chat, Icons.web, Icons.insert_emoticon];
    return AnchoredOverlay(
      showOverlay: true,
      overlayBuilder: (context, offset) {
        return CenterAbout(
          position: Offset(offset.dx, offset.dy - icons.length * 35.0),
          child: FabWithIcons(
            icons: icons,
            //onIconTapped: (int i) {},
          ),
        );
      },
      child: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add',
        child: Icon(Icons.add),
       // elevation: 2.0,
      ),
    );
  }
}
