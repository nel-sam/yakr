import 'package:bloc/bloc.dart';
import 'package:yakr/src/blocs/auth_bloc/auth_event.dart';
import 'package:yakr/src/blocs/auth_bloc/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  setAuth(String token, DateTime expiry) {
    dispatch(SetAuthEvent(token, expiry));
  }

  @override
  get initialState => AuthState.initial();

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    switch (event.runtimeType) {
      case SetAuthEvent:
        yield AuthSetEvent(event.token, event.expiry);
        break;
      default:
        break;
    }
  }
}
