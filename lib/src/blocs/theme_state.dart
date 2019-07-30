import 'package:yakr/src/ui/yakr_themes.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ThemeState extends Equatable {
  String selectedThemeKey;

  ThemeState._();
  ThemeState([List props = const []]) : super(props);

  factory ThemeState.initial() {
    return ThemeState._()..selectedThemeKey = YakrThemes.defaultTheme;
  }
}

class ThemeSetEvent extends ThemeState {
    final String selectedThemeKey;

    ThemeSetEvent(this.selectedThemeKey): super([selectedThemeKey]);
}