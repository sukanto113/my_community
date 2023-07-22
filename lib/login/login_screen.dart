import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:my_community/login/login_bloc.dart';
import 'package:my_community/login/login_event.dart';
import 'package:my_community/login/login_state.dart';
import 'package:my_community/src/features/dashboard/presentation/views/dashboard_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
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
    return BlocListener<LoginBloc, LoginState>(
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
              BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) {
                  return ElevatedButton(
                    onPressed: state is LoginStateLoading
                        ? null
                        : () {
                            BlocProvider.of<LoginBloc>(context)
                                .add(LoginEvent.loginButtonPressed());
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

  void _gotoToHomePageWhenLoginSuccess(LoginState state) {
    state.whenOrNull(
      success: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return const DashboardScreen();
            },
          ),
        );
      },
    );
  }

  void _showLoaderWhenLoading(LoginState state) {
    state.maybeWhen(
      loading: () {
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
