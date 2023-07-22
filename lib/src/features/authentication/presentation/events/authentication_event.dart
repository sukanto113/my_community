import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'authentication_event.freezed.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.loginWithEmailPassword({
    required String email,
    required String password,
  }) = _LoginWithEmailPassword;

  const factory AuthenticationEvent.logout() = _Logout;
  const factory AuthenticationEvent.requestAuthState() = _RequestAuthState;
}
