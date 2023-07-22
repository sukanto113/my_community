import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState{
  const factory LoginState.initial() = LoginStateInitial;
  const factory LoginState.loading() = LoginStateLoading;
  const factory LoginState.success() = LoginStateSuccess;
  
}