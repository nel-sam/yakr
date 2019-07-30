import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ThemeEvent  extends Equatable {
  final String themeKey;
  ThemeEvent(this.themeKey);
}

class SetThemeEvent extends ThemeEvent {
  SetThemeEvent(String themeKey): super(themeKey);
}
