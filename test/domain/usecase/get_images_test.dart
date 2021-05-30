import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_viewer/base/error/failure.dart';
import 'package:image_viewer/domain/entity/image_entity.dart';
import 'package:image_viewer/domain/repository/image_repository.dart';
import 'package:image_viewer/domain/usecase/get_images.dart';
import 'package:mockito/mockito.dart';

class MockImageRepository extends Mock implements ImageRepository {}

void main() {
  GetImages useCase;
  MockImageRepository mockImageRepository;

  setUp(() {
    mockImageRepository = MockImageRepository();
    useCase = GetImages(mockImageRepository);
  });

  final page = 1;
  final perPage = 10;
  final keyword = 'cars';

  final images =
      List.generate(perPage, (index) => ImageEntity(id: index, tags: keyword));

  test('should return expected list', () async {
    when(mockImageRepository.getImages(
            page: page, perPage: perPage, keyword: keyword))
        .thenAnswer((_) async => Right(images));

    final result =
        await useCase(Params(page: page, perPage: perPage, keyword: keyword));
    expect(result, Right(images));
    verifyNever(mockImageRepository.getImages());
    verify(mockImageRepository.getImages(
        page: page, perPage: perPage, keyword: keyword));
    verifyNoMoreInteractions(mockImageRepository);
  });

  test('should return auth failure', () async {
    when(mockImageRepository.getImages(
            page: page, perPage: perPage, keyword: keyword))
        .thenAnswer((_) async => Left(Failure.unauthorized()));

    final result =
        await useCase(Params(page: page, perPage: perPage, keyword: keyword));

    expect(result, Left(Failure.unauthorized()));
    verifyNever(mockImageRepository.getImages());
    verify(mockImageRepository.getImages(
        page: page, perPage: perPage, keyword: keyword));
    verifyNoMoreInteractions(mockImageRepository);
  });
}
