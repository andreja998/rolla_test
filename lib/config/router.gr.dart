// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:rolla_zadatak/features/auth/presentation/pages/login_page.dart'
    as _i1;
import 'package:rolla_zadatak/features/log_page/presentation/pages/log_page.dart'
    as _i4;
import 'package:rolla_zadatak/features/main_page/presentation/pages/main_page.dart'
    as _i3;
import 'package:rolla_zadatak/features/products_page/presentation/pages/products_page.dart'
    as _i2;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LoginRouter.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.LoginRouterPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    ProductsRouter.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.ProductsRouterPage(),
      );
    },
    ProductsRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ProductsPage(),
      );
    },
    MainRouter.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.MainRouterPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.MainPage(),
      );
    },
    LogRouter.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.LogRouterPage(),
      );
    },
    LogRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LogPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.LoginRouterPage]
class LoginRouter extends _i5.PageRouteInfo<void> {
  const LoginRouter({List<_i5.PageRouteInfo>? children})
      : super(
          LoginRouter.name,
          initialChildren: children,
        );

  static const String name = 'LoginRouter';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ProductsRouterPage]
class ProductsRouter extends _i5.PageRouteInfo<void> {
  const ProductsRouter({List<_i5.PageRouteInfo>? children})
      : super(
          ProductsRouter.name,
          initialChildren: children,
        );

  static const String name = 'ProductsRouter';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ProductsPage]
class ProductsRoute extends _i5.PageRouteInfo<void> {
  const ProductsRoute({List<_i5.PageRouteInfo>? children})
      : super(
          ProductsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductsRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MainRouterPage]
class MainRouter extends _i5.PageRouteInfo<void> {
  const MainRouter({List<_i5.PageRouteInfo>? children})
      : super(
          MainRouter.name,
          initialChildren: children,
        );

  static const String name = 'MainRouter';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MainPage]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute({List<_i5.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LogRouterPage]
class LogRouter extends _i5.PageRouteInfo<void> {
  const LogRouter({List<_i5.PageRouteInfo>? children})
      : super(
          LogRouter.name,
          initialChildren: children,
        );

  static const String name = 'LogRouter';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LogPage]
class LogRoute extends _i5.PageRouteInfo<void> {
  const LogRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LogRoute.name,
          initialChildren: children,
        );

  static const String name = 'LogRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
