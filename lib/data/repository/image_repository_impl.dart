import 'package:dartz/dartz.dart';
import 'package:image_viewer/base/error/failure.dart';
import 'package:image_viewer/base/exception/exceptions.dart';
import 'package:image_viewer/data/datasource/image_network_datasource.dart';
import 'package:image_viewer/domain/entity/image_entity.dart';
import 'package:image_viewer/domain/repository/image_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ImageRepository)
class ImageRepositoryImpl extends ImageRepository {
  final ImageNetworkDatasource networkDatasource;

  ImageRepositoryImpl(this.networkDatasource);

  @override
  Future<Either<Failure, List<ImageEntity>>> getImages(
      {int page, int perPage, String keyword}) async {
    try {
      final response = await networkDatasource.getImages(
          page: page, perPage: perPage, keyword: keyword);
      return Right(response);
    } on NetworkException {
      return Left(Failure.network());
    } on UnauthorizedException {
      return Left(Failure.unauthorized());
    } catch (e) {
      return Left(Failure.unhandled(e));
    }
  }
}
