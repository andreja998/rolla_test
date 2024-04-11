import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rolla_zadatak/config/shared_prefs_keys.dart';
import 'package:rolla_zadatak/features/auth/domain/entities/user/user.dart';
import 'package:rolla_zadatak/injection.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(_Initial()) {
    on<_GetUser>((event, emit) {
      var sharedPref = getIt<SharedPreferences>();
      var userString = sharedPref.getString(SharedPrefsKeys.user);

      if (userString != null) {
        final user = User.fromJson(jsonDecode(userString));
        emit(UserState.loaded(user: user));
      } else {
        // Here we can handle error case
      }

    });
  }
}
