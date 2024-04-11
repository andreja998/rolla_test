import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:rolla_zadatak/config/api_constants.dart';
import 'package:rolla_zadatak/config/router.dart';
import 'package:rolla_zadatak/config/router.gr.dart';
import 'package:rolla_zadatak/config/shared_prefs_keys.dart';
import 'package:rolla_zadatak/features/auth/domain/entities/user/user.dart';
import 'package:rolla_zadatak/injection.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class AppModules {
  // @preResolve
  // Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @lazySingleton
  AppRouter get appRouter {
    return AppRouter();
  }

  @lazySingleton
  Dio get dio {
    final dio = Dio(BaseOptions(
        baseUrl: 'https://dummyjson.com/',
        validateStatus:(status) => true,
        contentType: 'application/json'));
    String? token = '';
    String? refreshToken = '';
    var sharedPref = getIt<SharedPreferences>();

    // Dio version seems like not working well, some bug I guess for onError callback
    // I've lost a lot of time figuring out but it's some bug in the package
    // In the previues project I've done this and it was working
    // So the interceptor for refresh token is not finished, but I know how it should be done
    dio.interceptors.addAll([
      LogInterceptor(responseBody: true),
      InterceptorsWrapper(
        onRequest: (request, handler) async {
          token = sharedPref.getString(SharedPrefsKeys.accessToken);
          if (token != null && token != '') {
            request.headers['Authorization'] = 'Bearer $token';
          }

          return handler.next(request);
        },
        onResponse: (response, handler) async {
          final respToken = response.headers.value('Authorization');
          if (response.statusCode == 401) {
            refreshToken = sharedPref.getString(SharedPrefsKeys.accessToken);
            try {
              var tokenDio = Dio(BaseOptions(
        baseUrl: 'https://dummyjson.com/', validateStatus: (status) => true,));
              var result = await tokenDio
                  .post(ApiConstants.refreshToken,
                      data: jsonEncode({'expiresInMins': 20}),
                      options: new Options(
                          headers: {'Authorization': 'Bearer $refreshToken'}));
              if (result.statusCode == null ||
                    result.statusCode! ~/ 100 != 2) {
                  throw DioException(requestOptions: result.requestOptions);
              }

              if (result.statusCode == 201 || result.statusCode == 200) {
                  var newToken = User.fromJson(result.data).token;
                  // set bearer
                  response.requestOptions.headers['Authorization'] = 'Bearer $newToken';
                  //create request with new access token
                  final opts = new Options(
                      method: response.requestOptions.method,
                      headers: response.requestOptions.headers);
                  final cloneReq = await dio.request(response.requestOptions.path,
                      options: opts,
                      data: response.requestOptions.data,
                      queryParameters: response.requestOptions.queryParameters);

                  return handler.resolve(cloneReq);
                } 
            } on DioException catch (e, st) {
              await sharedPref.clear();
              getIt<AppRouter>().replaceAll([const LoginRouter(children: [LogRoute()])]);
            }
          }
          return handler.next(response);

        
        },
        onError: (DioException error, ErrorInterceptorHandler handler) async {
          if (error.response == null) return handler.next(error);
          print('Token expired');
          if (error.response?.statusCode == 401) {
            refreshToken = sharedPref.getString(SharedPrefsKeys.accessToken);
            try {
              var tokenDio = Dio(BaseOptions(
        baseUrl: 'https://dummyjson.com/'));
              var result = await tokenDio
                  .post(ApiConstants.refreshToken,
                      data: jsonEncode({'expiresInMins': 10}),
                      options: new Options(
                          headers: {'Authorization': 'Bearer $refreshToken'}));
              if (result.statusCode == null ||
                    result.statusCode! ~/ 100 != 2) {
                  throw DioException(requestOptions: result.requestOptions);
              }

              if (result.statusCode == 201 || result.statusCode == 200) {
                  //get new tokens ...
                  print('access token $token');
                  print('refresh token $refreshToken');
                  var newToken = User.fromJson(result.data).token;
                  token = newToken;
                  return handler.next(error);
                } 
            } on DioException catch (e, st) {
              await sharedPref.clear();
              getIt<AppRouter>().replaceAll([const LoginRouter()]);
            }
          }
        },
      ),
      QueuedInterceptorsWrapper(
        onError: (error, handler) async {
          if (error.response != null && error.response!.statusCode == 401) {
              final retryDio = Dio(
                BaseOptions(baseUrl: error.requestOptions.baseUrl),
              );
              error.requestOptions.headers['Authorization'] = token;

              final result = await retryDio.fetch(error.requestOptions);

              return handler.resolve(result);
            }
        },
      )]
    );

    return dio;
  }
}
