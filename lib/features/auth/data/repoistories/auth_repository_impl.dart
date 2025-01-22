import 'package:blog_app/core/error/exception.dart';
import 'package:blog_app/core/error/failuers.dart';
import 'package:blog_app/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:blog_app/features/auth/domian/repositor/auth_repository.dart';
import 'package:fpdart/fpdart.dart';
// import 'package:fpdart/fpdart.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  const AuthRepositoryImpl(this.remoteDataSource);
  // const AuthRepositoryImpl(this.remoteDataSource);

  @override
 Future< Either<Failuer, String> >loginWthEmailAndPassword(
      {required String email, required password}) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failuer, String>> signUpWthEmailAndPassword(
      {required String name, required String email, required password}) async {
    try {
      final userId = await remoteDataSource.signUpWithEmailAndPassword(
        name: name,
        email: email,
        password: password,
      );
      return right(userId);
    } on ServiceExpcption catch (e) {
      return left(Failuer(e.message));
    }
  }
}
