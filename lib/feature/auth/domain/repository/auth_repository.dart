import 'package:blogs_app/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';

abstract class AuthRepository {
  Future<Either<Failure, String>> signUpWithEmailPassword(
      {required String email,
      required String password,
      required String username});

  Future<Either<Failure, String>> signInWithEmailPassword({
    required String email,
    required String password,
  });
}
