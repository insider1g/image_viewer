import 'package:dartz/dartz.dart';
import 'package:image_viewer/base/error/failure.dart';
import 'package:image_viewer/domain/entity/image_entity.dart';

abstract class ImageRepository {
  Future<Either<Failure, List<ImageEntity>>> getImages(
      {int page, int perPage, String keyword});
}
