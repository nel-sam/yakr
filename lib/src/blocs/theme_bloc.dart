import 'package:bloc/bloc.dart';
import 'package:yakr/src/blocs/theme_event.dart';
import 'package:yakr/src/blocs/theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
   setTheme(String themeKey) {
    dispatch(SetThemeEvent(themeKey));
  }
 
  @override
  get initialState => ThemeState.initial();

  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event) async* {
    switch(event.runtimeType) {
      case SetThemeEvent:
        yield currentState..selectedThemeKey = event.themeKey;
        break;
      default: 
        break;
    }
  }
}
