import 'package:dartz/dartz.dart';
import 'package:image_viewer/base/error/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
