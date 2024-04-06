import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rolla_zadatak/features/auth/application/bloc/login_bloc.dart';


@RoutePage(name: 'LoginRouter')
class LoginRouterPage extends AutoRouter {}

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                                // invalidEmailAndPasswordCombination: (_) =>
                                //     'Invalid email and password combination',
                                ))
                        .show(context);
                  }, (_) => {
                    // context.replaceRoute(MainRoute())
                  }));
        },
        builder: (context, state) {
          return Text('Login');
        },
      ),
    );
  }
}