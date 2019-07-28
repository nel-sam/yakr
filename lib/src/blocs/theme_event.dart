abstract class ThemeEvent {
  String themeKey;
  ThemeEvent(this.themeKey);
}

class SetThemeEvent extends ThemeEvent {
  SetThemeEvent(String themeKey): super(themeKey);
}
