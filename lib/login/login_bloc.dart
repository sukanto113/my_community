// class LoginBloc extends Bloc
import 'login_event.dart';
import 'login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      await event.when(
        loginButtonPressed: () async {
          emit(const LoginState.loading());
          await Future.delayed(const Duration(seconds: 5));
          emit(const LoginState.success());
        },
      );
    });
  }
}
