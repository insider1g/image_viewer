import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'image_state.dart';

@injectable
class ImageBloc extends Cubit<ImageState> {
  ImageBloc() : super(ImageState.transition());

  Future<void> scheduleLoadedState(int delayInMs) async {
    await Future.delayed(Duration(milliseconds: delayInMs));
    emit(ImageState.loaded());
  }

  Future<void> setTransitionStateWithPostDelay(int delayInMs) async {
    emit(ImageState.transition());
    await Future.delayed(Duration(milliseconds: delayInMs));
  }
}
