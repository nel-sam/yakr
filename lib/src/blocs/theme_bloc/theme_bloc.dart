import 'package:bloc/bloc.dart';
import 'package:yakr/src/blocs/theme_bloc/theme_event.dart';
import 'package:yakr/src/blocs/theme_bloc/theme_state.dart';
import 'package:yakr/src/ui/yakr_themes.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
   changeTheme(ThemeKeys themeKey) {
    dispatch(SetThemeEvent(themeKey));
  }

  @override
  get initialState => ThemeState.initial();

  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event) async* {
    switch(event.runtimeType) {
      case SetThemeEvent:
        yield ThemeSetEvent(event.themeKey);
        break;
      default:
        break;
    }
  }
}
