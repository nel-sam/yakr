import 'package:flutter/material.dart';

class ThemeStateModel {
  String selectedThemeKey;

  Map<String, ThemeData> availableThemes = {
    "NorwayNights": ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.blueAccent,
        brightness: Brightness.dark,
        primaryTextTheme: TextTheme(display1: TextStyle(color: Colors.white))),
    "DowntownOslo": ThemeData(
        primarySwatch: Colors.grey,
        accentColor: Colors.blueAccent,
        brightness: Brightness.light,
        primaryTextTheme: TextTheme(display1: TextStyle(color: Colors.black)))
  };
}
