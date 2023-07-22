import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'authentication_state.freezed.dart';

@freezed
class AuthenticationState with _$AuthenticationState{
  const factory AuthenticationState.unknown() = _Unknown;
  const factory AuthenticationState.authenticated() = _Authenticated;
  const factory AuthenticationState.unauthenticated() = _Unauthenticated;
}