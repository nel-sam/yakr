import 'package:flutter/material.dart';

@immutable
class AuthState {
  String token;
  DateTime expiry;

  AuthState._();
  AuthState([List props = const []]);

  factory AuthState.initial() {
    return AuthState._()
      ..token = ''
      ..expiry = DateTime.now();
  }
}

class AuthSetEvent extends AuthState {
  String token;
  DateTime expiry;

  AuthSetEvent(this.token, this.expiry) : super([token, expiry]);
}
