import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_viewer/di/dependencies.dart';
import 'package:image_viewer/main.dart';
import 'package:image_viewer/presentation/screens/images/images_screen.dart';

void main() {
  setUpAll(() async {
    await configureDependencies();
  });

  testWidgets('test app initialization', (tester) async {
    final parent = MyApp();
    await tester.pumpWidget(parent);
    await tester.pumpAndSettle(Duration(seconds: 5));
    expect(find.byIcon(Icons.search), findsOneWidget);

    final imagesScreen = find.descendant(
        of: find.byWidget(parent), matching: find.byType(ImagesScreen));
    expect(imagesScreen, findsOneWidget);
  });
}
