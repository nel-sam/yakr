// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:yakr/src/blocs/theme_bloc.dart';
// import 'package:yakr/src/ui/yakr_themes.dart';

// class SettingsModal extends StatefulWidget {
//   final BuildContext parentContext;

//   SettingsModal({Key key, this.parentContext});

//   @override
//   _SettingsModalState createState() => _SettingsModalState();
// }

// class _SettingsModalState extends State<SettingsModal> {
//   ThemeBloc _themeBloc;
//   List<RaisedButton> themeButtons;

//   @override
//   void initState() {
//     _themeBloc = BlocProvider.of<ThemeBloc>(widget.parentContext);
//     _loadThemes();
//     super.initState();
//   }

//   _loadThemes() {
//     themeButtons = List<RaisedButton>();

//     YakrThemes.availableThemes.forEach((key, value) {
//       themeButtons.add(
//         RaisedButton(
//             onPressed: () {
//                 _themeBloc.changeTheme(key);
//                 _loadThemes();
//             },
//             color: value.accentColor,
//             child: _themeBloc.currentState.selectedThemeKey == key
//                 ? Icon(Icons.check, color: Colors.white)
//                 : Container()),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return PopupMenuButton(
//       itemBuilder: (context) => [
//         // PopupMenuItem(
//         //   child:
//         //    Column(children: [
//         //     Row(children: [
//         //       Text("Theme"),
//         //     ])
//         //   ],
//         //   mainAxisSize: MainAxisSize.min,
//         //   ),
//         // ),
//         PopupMenuItem(
//           child:
//           Column(children: [
//             Row(children: [
//               Text("Theme"),
//             ]),
//             Row(
//               children: themeButtons
//             )
//           ],
//           mainAxisSize: MainAxisSize.max,
//           ),
//         )
//       ]
//     );

//     // return AlertDialog(
//     //   title: Text(
//     //     "Settings",
//     //     style: TextStyle(
//     //         color:
//     //             Theme.of(widget.parentContext).primaryTextTheme.display1.color),
//     //   ),
//     //   content: Column(children: [
//     //     Row(children: themeButtons ?? [Container()])
//     //   ], mainAxisSize: MainAxisSize.min),
//     //   contentPadding: EdgeInsets.all(10),
//     //   actions: [
//     //     FlatButton(
//     //       child: Text("Close"),
//     //       onPressed: () {
//     //         Navigator.of(widget.parentContext).pop();
//     //       },
//     //     ),
//     //   ],
//     // );
//   }
// }
