

import 'package:blog_app/core/error/failuers.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class UseCase <SuccessType, Params>{

  Future<Either<Failuer,SuccessType>> call(Params params);
}