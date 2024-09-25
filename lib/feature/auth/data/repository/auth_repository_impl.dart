import 'package:blogs_app/core/error/exceptions.dart';
import 'package:blogs_app/core/error/failure.dart';
import 'package:blogs_app/feature/auth/data/datasource/auth_remote_data_source.dart';
import 'package:blogs_app/feature/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/src/either.dart';
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepositoryImpl(this.authRemoteDataSource);

  @override
  Future<Either<Failure, String>> signUpWithEmailPassword(
      {required String email,
      required String password,
      required String username}) async {
    try {
      final userId = await authRemoteDataSource.signUpWithEmailPassword(
          name: username, email: email, password: password);
      return right(userId);
    } on ServerException catch (e) {
      throw Left(
        Failure(e.message),
      );
    }
  }

  @override
  Future<Either<Failure, String>> signInWithEmailPassword({
    required String email,
    required String password,
  }) {
    // TODO: implement signUpWithEmailPassword
    throw UnimplementedError();
  }
}
