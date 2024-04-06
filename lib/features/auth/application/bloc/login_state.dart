part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required String emailAddress,
    required String password,
    required bool isLoading,
    required Option<Either<LoginFailure, Unit>> loginFailureOrSuccessOption
  }) = _LoginState;

  factory LoginState.initial() =>
      LoginState(
          emailAddress: '',
          password: '',
          isLoading: false,
          loginFailureOrSuccessOption: Option.none()
      );
}
