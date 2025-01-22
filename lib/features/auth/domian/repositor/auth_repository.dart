import 'package:blog_app/core/error/failuers.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
 Future< Either<Failuer, String>> signUpWthEmailAndPassword({
    required String name,
    required String email,
    required password,
  });
 Future<  Either<Failuer, String>> loginWthEmailAndPassword({
    
    required String email,
    required password,
  });
}
