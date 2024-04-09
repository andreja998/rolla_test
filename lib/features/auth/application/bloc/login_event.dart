part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.signInWithEmailAndPasswordPressed(
      String email, String password) = SignInWithEmailAndPasswordPressed;
}
