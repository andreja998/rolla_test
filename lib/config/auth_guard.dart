import 'package:auto_route/auto_route.dart';
import 'package:rolla_zadatak/config/router.gr.dart';
import 'package:rolla_zadatak/config/shared_prefs_keys.dart';
import 'package:rolla_zadatak/injection.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final accessToken =
        await getIt<SharedPreferences>().getString(SharedPrefsKeys.accessToken);

    print('Access $accessToken');
    if (accessToken != null && accessToken.isNotEmpty)
      resolver.next(true); // book was found. proceed to the page
    else
      router.push(LoginRouter(children: [LoginRoute()]));
  }
}
