import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:rolla_zadatak/config/api_constants.dart';
import 'package:rolla_zadatak/config/extensions/dio_extension.dart';
import 'package:rolla_zadatak/config/shared_prefs_keys.dart';
import 'package:rolla_zadatak/features/auth/domain/entities/failures/login_failure.dart';
import 'package:fpdart/src/unit.dart';
import 'package:fpdart/src/either.dart';
import 'package:rolla_zadatak/features/auth/domain/entities/user/user.dart';
import 'package:rolla_zadatak/features/auth/domain/repositories/auth_repository_interface.dart';
import 'package:rolla_zadatak/injection.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IAuthRepositoryInterface)
class AuthRepository implements IAuthRepositoryInterface {
  @override
  Future<Either<LoginFailure, Unit>> signInWithUsernameAndPassword(
      {required String username, required String password}) async {
    final dio = await getIt<Dio>();
    Response response = await dio.post(ApiConstants.signInRoute,
        data: jsonEncode(
            {'username': username, 'password': password, 'expiresInMins': 20}));

    if (response.isSuccessful()) {
      final token = User.fromJson(response.data).token;
      var sp = getIt<SharedPreferences>();

      await sp.setString(SharedPrefsKeys.accessToken, token);
      await sp.setString(SharedPrefsKeys.refreshToken, token);

      return right(unit);
    } else if (response.statusCode == 401) {
      return left(const LoginFailure.serverError());
    } else if (response.statusCode == 404) {
      return left(const LoginFailure.serverError());
    } else {
      return left(const LoginFailure.serverError());
    }
  }
}
