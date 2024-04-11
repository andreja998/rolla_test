import 'package:auto_route/auto_route.dart';
import 'package:rolla_zadatak/config/auth_guard.dart';

import 'router.gr.dart';

// part of 'router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => RouteType.custom(
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return TransitionsBuilders.noTransition(
              context, animation, secondaryAnimation, child);
        },
      );
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: LoginRouter.page, path: '/login', children: [
      AutoRoute(
        path: '',
        page: LoginRoute.page,
      ),
    ]),
    AutoRoute(page: UserRouter.page, path: '/user', children: [
      AutoRoute(
        path: '',
        page: UserRoute.page,
      ),
    ]),
    AutoRoute(path: '/', page: MainRoute.page, guards: [
      AuthGuard()
    ], children: [
      AutoRoute(path: 'productsPage', page: ProductsRouter.page, children: [
        AutoRoute(
          path: '',
          page: ProductsRoute.page,
        ),
      ]),
      AutoRoute(path: 'logPage', page: LogRouter.page, children: [
        AutoRoute(path: '', page: LogRoute.page),
      ]),
    ])
  ];
}
