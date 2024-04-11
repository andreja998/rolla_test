import 'package:auto_route/auto_route.dart';
import 'package:rolla_zadatak/config/router.gr.dart';
import 'package:rolla_zadatak/config/shared_prefs_keys.dart';
import 'package:rolla_zadatak/injection.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final accessToken = getIt<SharedPreferences>().getString(SharedPrefsKeys.accessToken);
    
    // In real world scenario here should be better check for valid token
    if (accessToken != null && accessToken.isNotEmpty)
      resolver.next(true);
    else
      router.replaceAll([const LoginRouter()]);
  }
}
