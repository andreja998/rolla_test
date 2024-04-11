import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rolla_zadatak/config/router.dart';
import 'package:rolla_zadatak/config/themes.dart';
import 'package:rolla_zadatak/features/auth/application/bloc/login_bloc.dart';
import 'package:rolla_zadatak/features/log_page/application/bloc/log_bloc.dart';
import 'package:rolla_zadatak/features/products_page/application/bloc/product_details_bloc.dart';
import 'package:rolla_zadatak/features/user_page/application/bloc/user_bloc.dart';
import 'package:rolla_zadatak/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MultiBlocProvider(
            providers: [
          BlocProvider(create: ((context) => ProductDetailsBloc())),
          BlocProvider(create: ((context) => LoginBloc())),
          BlocProvider(create: ((context) => LogBloc())),
          BlocProvider(create: ((context) => UserBloc()))
        ],
            child: MaterialApp.router(
              routerDelegate: appRouter.delegate(),
              routeInformationParser: appRouter.defaultRouteParser(),
              title: 'Rolla Zadatak',
              theme: AppTheme(Brightness.light).themeData,
              darkTheme: AppTheme(Brightness.dark).themeData,
            )));
  }
}
