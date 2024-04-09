import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rolla_zadatak/config/router.dart';
import 'package:rolla_zadatak/config/themes.dart';
import 'package:rolla_zadatak/features/auth/application/bloc/login_bloc.dart';
import 'package:rolla_zadatak/features/products_page/application/bloc/product_details_bloc.dart';
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
        ],
            child: MaterialApp.router(
              // routerDelegate: _appRouter.delegate(),
              //     AutoRouterDelegate.declarative(_appRouter, routes: (_) {
              //   bool isAuthenticated = getIt.get(instanceName: 'isAuthenticated');
              //   // SysInfo.
              //   return [
              //     const MainRoute(),

              //     // isAuthenticated == true ? const ProductDetailsRoute() : const ProfilePageRoute()
              //   ];
              // }),
              // routeInformationParser: _appRouter.defaultRouteParser(),
              routerDelegate: appRouter.delegate(),
              routeInformationParser: appRouter.defaultRouteParser(),
              title: 'Rolla Zadatak',
              theme: AppTheme(Brightness.light).themeData,
              darkTheme: AppTheme(Brightness.dark).themeData,
            )));
  }
}
