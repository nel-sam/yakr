import 'package:flutter/material.dart';
import 'package:yakr/src/ui/yakr_themes.dart';

@immutable
class ThemeState {
  ThemeKeys selectedThemeKey;

  ThemeState._();
  ThemeState([List props = const []]);

  factory ThemeState.initial() {
    return ThemeState._()..selectedThemeKey = YakrThemes.defaultTheme;
  }
}

class ThemeSetEvent extends ThemeState {
    final ThemeKeys selectedThemeKey;

    ThemeSetEvent(this.selectedThemeKey): super([selectedThemeKey]);
}