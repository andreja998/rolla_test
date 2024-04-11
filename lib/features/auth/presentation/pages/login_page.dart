import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rolla_zadatak/config/router.gr.dart';
import 'package:rolla_zadatak/features/auth/application/bloc/login_bloc.dart';
import 'package:rolla_zadatak/features/common/widgets/primary_button.dart';
import 'package:rolla_zadatak/features/common/widgets/primary_input.dart';

@RoutePage(name: 'LoginRouter')
class LoginRouterPage extends AutoRouter {}

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          state.loginFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold((failure) {
                    FlushbarHelper.createError(
                      message: failure.map(
                      serverError: (_) => 'Server error',
                    )).show(context);
                  }, (_) => {context.replaceRoute(const MainRoute())}));
        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                ),
                PrimaryInput(
                  labelText: "Username",
                  controller: usernameController,
                ),
                SizedBox(
                  height: 16,
                ),
                PrimaryInput(
                  labelText: "Password",
                  obscureText: true,
                  controller: passwordController,
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 32,
                ),
                PrimaryButton(
                    child: Text('Sign In'),
                    onClick: () => {
                          context.read<LoginBloc>().add(
                              LoginEvent.signInWithEmailAndPasswordPressed(
                                  usernameController.text,
                                  passwordController.text))
                        })
              ],
            ),
          );
        },
      ),
    );
  }
}
