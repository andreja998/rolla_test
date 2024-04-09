import 'package:fpdart/fpdart.dart';
import 'package:rolla_zadatak/features/auth/domain/entities/failures/login_failure.dart';

abstract class IAuthRepositoryInterface {
  Future<Either<LoginFailure, Unit>> signInWithUsernameAndPassword(
      {required String username, required String password});
}
