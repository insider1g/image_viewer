import 'package:image_viewer/base/error/failure.dart';
import 'package:image_viewer/domain/entity/image_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'images_state.freezed.dart';

@freezed
abstract class ImagesState with _$ImagesState {
  const factory ImagesState.loading() = _ImagesStateLoading;
  const factory ImagesState.content(
      {List<ImageEntity> images, bool endReached}) = _ImagesStateContent;
  const factory ImagesState.empty() = _ImagesStateEmptyContent;
  const factory ImagesState.error(Failure failure) = _ImagesStateError;
}
