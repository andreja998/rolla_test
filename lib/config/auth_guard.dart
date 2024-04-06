import 'package:auto_route/auto_route.dart';
import 'package:rolla_zadatak/config/router.gr.dart';

class AuthGuard extends AutoRouteGuard {

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {

    if (1 == 2)
      resolver.next(true);
    else
      router.push(LoginRouter(children: [LoginRoute()]));
  }
}