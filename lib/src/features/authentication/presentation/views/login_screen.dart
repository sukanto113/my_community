import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';

import '../blocs/authentication_bloc.dart';
import '../events/authentication_event.dart';
import '../states/authentication_state.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthenticationBloc(),
      child: const Scaffold(
        body: _LoginScreenBody(),
      ),
    );
  }
}

class _LoginScreenBody extends StatefulWidget {
  const _LoginScreenBody({
    super.key,
  });

  @override
  State<_LoginScreenBody> createState() => _LoginScreenBodyState();
}

class _LoginScreenBodyState extends State<_LoginScreenBody> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        _showLoaderWhenLoading(state);
        _gotoToHomePageWhenLoginSuccess(state);
      },
      child: Form(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                child: TextFormField(
                  decoration: const InputDecoration(
                    label: Text("Email"),
                  ),
                ),
              ),
              SizedBox(
                width: 200,
                child: TextFormField(
                  decoration: const InputDecoration(
                    label: Text("Password"),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              BlocBuilder<AuthenticationBloc, AuthenticationState>(
                builder: (context, state) {
                  return ElevatedButton(
                    onPressed: () {
                      context.read<AuthenticationBloc>().add(
                            const AuthenticationEvent.loginWithEmailPassword(
                              email: "email",
                              password: "password",
                            ),
                          );
                    },
                    child: const Text("Login"),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void _gotoToHomePageWhenLoginSuccess(AuthenticationState state) {
    state.whenOrNull(
      authenticated: () {
        context.go('/dashboard');
      },
    );
  }

  void _showLoaderWhenLoading(AuthenticationState state) {
    state.maybeWhen(
      unknown: () {
        EasyLoading.show(maskType: EasyLoadingMaskType.black);
      },
      orElse: () {
        if (EasyLoading.isShow) {
          EasyLoading.dismiss();
        }
      },
    );
  }
}
