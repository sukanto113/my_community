import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../events/authentication_event.dart';
import '../states/authentication_state.dart';


class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(const AuthenticationState.unknown()) {
    on<AuthenticationEvent>(_onAuthenticationEvent);
    add(const AuthenticationEvent.requestAuthState());
  }

  FutureOr<void> _onAuthenticationEvent(event, emit) async {
    await event.when(
      loginWithEmailPassword: (String email, String password) async {
        emit(const AuthenticationState.unknown());
        await Future.delayed(const Duration(seconds: 5));
        emit(const AuthenticationState.authenticated());
      },
      logout: () async {
        await Future.delayed(const Duration(seconds: 5));
        emit(const AuthenticationState.unauthenticated());
      },
      requestAuthState: () async {
        await Future.delayed(const Duration(seconds: 5));
        emit(const AuthenticationState.unauthenticated());
      },
    );
  }
}
