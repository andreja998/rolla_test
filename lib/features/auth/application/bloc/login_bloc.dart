import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rolla_zadatak/features/auth/domain/entities/failures/login_failure.dart';
import 'package:rolla_zadatak/features/auth/domain/repositories/auth_repository_interface.dart';
import 'package:rolla_zadatak/features/auth/infrastructure/auth_repository.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IAuthRepositoryInterface authRepositoryInterface = AuthRepository();

  LoginBloc() : super(LoginState.initial()) {
    on<SignInWithEmailAndPasswordPressed>((event, emit) async {
      emit(state.copyWith(
          loginFailureOrSuccessOption: Option.none(), isLoading: true));

      final result =
          await authRepositoryInterface.signInWithUsernameAndPassword(
              username: event.email, password: event.password);
      result.fold(
          (failure) => {
                emit(state.copyWith(
                    loginFailureOrSuccessOption: optionOf(result),
                    isLoading: false))
              },
          (r) => {
                emit(state.copyWith(
                    loginFailureOrSuccessOption: optionOf(result),
                    isLoading: false))
              });
    });
  }
}
