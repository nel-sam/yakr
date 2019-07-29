import 'package:yakr/src/ui/yakr_themes.dart';

class ThemeState {
  String selectedThemeKey;

  ThemeState._();

  factory ThemeState.initial() {
    return ThemeState._()..selectedThemeKey = YakrThemes.defaultTheme;
  }
}
