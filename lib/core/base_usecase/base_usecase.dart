import 'package:dartz/dartz.dart';
import 'package:movies_app/core/failuer/failuer.dart';

abstract class BaseUseCase<T> {
  Future<Either<Failuer, T>> call();
}
