import 'package:yakr/src/ui/yakr_themes.dart';

abstract class ThemeEvent {
  ThemeKeys themeKey;
  ThemeEvent(this.themeKey);
}

class SetThemeEvent extends ThemeEvent {
  SetThemeEvent(ThemeKeys themeKey): super(themeKey);
}
