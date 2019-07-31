import 'package:flutter/material.dart';

enum ThemeKeys {
  norwayNights,
  downtownOslo
}

class YakrThemes {
  static ThemeKeys defaultTheme = ThemeKeys.norwayNights;

  static Map<ThemeKeys, ThemeData> availableThemes = {
    ThemeKeys.norwayNights: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.blueAccent,
        brightness: Brightness.dark,
        primaryTextTheme: TextTheme(display1: TextStyle(color: Colors.white))),
    ThemeKeys.downtownOslo: ThemeData(
        primarySwatch: Colors.grey,
        accentColor: Colors.blueAccent,
        brightness: Brightness.light,
        primaryTextTheme: TextTheme(display1: TextStyle(color: Colors.black)))
  };
}
