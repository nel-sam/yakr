import 'package:yakr/src/models/theme_state_model.dart';

class ThemeState {  
  ThemeStateModel themeState;

  ThemeState._();

  factory ThemeState.initial() {
    return ThemeState._()..themeState = ThemeStateModel();
  }
}