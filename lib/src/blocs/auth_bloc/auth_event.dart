abstract class AuthEvent {
  String token;
  DateTime expiry;
  AuthEvent(this.token, this.expiry);
}

class SetAuthEvent extends AuthEvent {
  SetAuthEvent(String token, DateTime expiry): super(token, expiry);
}
