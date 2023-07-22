import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:flutter/foundation.dart';
part 'login_event.freezed.dart';

@freezed
class LoginEvent with _$LoginEvent{
  const factory LoginEvent.loginButtonPressed() = _LoginButtonPressed;  
}