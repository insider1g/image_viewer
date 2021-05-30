import 'package:flutter_test/flutter_test.dart';
import 'package:image_viewer/presentation/screens/image/image_bloc.dart';
import 'package:image_viewer/presentation/screens/image/image_state.dart';

void main() {
  ImageBloc imageBloc;

  setUp(() {
    imageBloc = ImageBloc();
  });

  group('image bloc tests group', () {
    test('should have initial state', () {
      expect(imageBloc.state, ImageState.transition());
    });

    test('should change state after transition', () async {
      expect(imageBloc.state, ImageState.transition());
      await imageBloc.scheduleLoadedState(0);
      expect(imageBloc.state, ImageState.loaded());
    });

    test('should change state back after scheduling transition state',
        () async {
      await imageBloc.scheduleLoadedState(0);
      expect(imageBloc.state, ImageState.loaded());
      await imageBloc.setTransitionStateWithPostDelay(0);
      expect(imageBloc.state, ImageState.transition());
    });
  });
}
