import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:image_viewer/base/error/failure.dart';
import 'package:image_viewer/base/usecase/usecase.dart';
import 'package:image_viewer/domain/entity/image_entity.dart';
import 'package:image_viewer/domain/repository/image_repository.dart';

class GetImages implements UseCase<List<ImageEntity>, Params> {
  final ImageRepository _imageRepository;

  GetImages(this._imageRepository);

  @override
  Future<Either<Failure, List<ImageEntity>>> call(Params params) {
    return _imageRepository.getImages(
        page: params.page, perPage: params.perPage, keyword: params.keyword);
  }
}

class Params extends Equatable {
  final int page;
  final int perPage;
  final String keyword;

  Params({this.page, this.perPage, this.keyword});

  @override
  List<Object> get props => [page, perPage, keyword];
}
