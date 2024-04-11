// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i13;

import 'config/modules/app_modules.dart' as _i15;
import 'config/modules/storage_module.dart' as _i16;
import 'config/router.dart' as _i3;
import 'features/auth/application/bloc/login_bloc.dart' as _i11;
import 'features/auth/domain/repositories/auth_repository_interface.dart'
    as _i5;
import 'features/auth/infrastructure/auth_repository.dart' as _i6;
import 'features/log_page/domain/repositories/log_repository_interface.dart'
    as _i7;
import 'features/log_page/infrastructure/log_repository.dart' as _i8;
import 'features/products_page/application/bloc/product_details_bloc.dart'
    as _i12;
import 'features/products_page/domain/repositories/product_details_repository_interface.dart'
    as _i9;
import 'features/products_page/infrastructure/product_details_repository.dart'
    as _i10;
import 'features/user_page/application/bloc/user_bloc.dart' as _i14;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appModules = _$AppModules();
  final storageModule = _$StorageModule();
  gh.lazySingleton<_i3.AppRouter>(() => appModules.appRouter);
  gh.lazySingleton<_i4.Dio>(() => appModules.dio);
  gh.lazySingleton<_i5.IAuthRepositoryInterface>(() => _i6.AuthRepository());
  gh.lazySingleton<_i7.ILogRepositoryInterface>(() => _i8.LogRepository());
  gh.lazySingleton<_i9.IProductDetailsRepositoryInterface>(
      () => _i10.ProductDetailsRepository());
  gh.factory<_i11.LoginBloc>(() => _i11.LoginBloc());
  gh.factory<_i12.ProductDetailsBloc>(() => _i12.ProductDetailsBloc());
  await gh.factoryAsync<_i13.SharedPreferences>(
    () => storageModule.preferences,
    preResolve: true,
  );
  gh.factory<_i14.UserBloc>(() => _i14.UserBloc());
  return getIt;
}

class _$AppModules extends _i15.AppModules {}

class _$StorageModule extends _i16.StorageModule {}
