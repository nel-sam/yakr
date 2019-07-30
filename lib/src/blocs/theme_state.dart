import 'package:yakr/src/ui/yakr_themes.dart';

class ThemeState {
  String selectedThemeKey;

  ThemeState._();
  ThemeState([List props = const []]);

  factory ThemeState.initial() {
    return ThemeState._()..selectedThemeKey = YakrThemes.defaultTheme;
  }
}

class ThemeSetEvent extends ThemeState {
    final String selectedThemeKey;

    ThemeSetEvent(this.selectedThemeKey): super([selectedThemeKey]);
}