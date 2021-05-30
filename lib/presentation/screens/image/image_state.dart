import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_state.freezed.dart';

@freezed
abstract class ImageState with _$ImageState {
  const factory ImageState.transition() = _ImageStateTransition;
  const factory ImageState.loaded() = _ImageStateLoaded;
}
