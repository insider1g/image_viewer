import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_viewer/base/error/failure.dart';
import 'package:image_viewer/data/utils/pageable_search.dart';
import 'package:image_viewer/domain/entity/image_entity.dart';
import 'package:image_viewer/domain/usecase/get_images.dart';
import 'package:image_viewer/presentation/screens/images/images_bloc.dart';
import 'package:image_viewer/presentation/screens/images/images_state.dart';
import 'package:mockito/mockito.dart';

class MockGetImages extends Mock implements GetImages {}

void main() {
  ImagesBloc imagesBloc;
  GetImages getImages;
  PageableSearch<ImageEntity> pageableSearch;

  setUp(() {
    getImages = MockGetImages();
    pageableSearch = PageableSearch();
    imagesBloc =
        ImagesBloc(getImages: getImages, pageableSearch: pageableSearch);
  });

  group('images bloc test group', () {
    test('should have initial state', () {
      expect(imagesBloc.state, ImagesState.loading());
    });

    test('should change bloc\'s state on fetch', () async {
      final maxItemsPerPage = pageableSearch.maxItemsPerPage;

      final images =
          List.generate(maxItemsPerPage, (index) => ImageEntity(id: index));

      when(getImages(any)).thenAnswer((_) async => Right(images));
      expect(imagesBloc.state, ImagesState.loading());
      await imagesBloc.safeFetch();
      expect(imagesBloc.state,
          ImagesState.content(images: images, endReached: false));
    });

    test('should combine data and change bloc\'s state on fetch', () async {
      final maxItemsPerPage = pageableSearch.maxItemsPerPage;

      final firstFetchResult =
          List.generate(maxItemsPerPage, (index) => ImageEntity(id: index));

      final secondFetchResult = List.generate(maxItemsPerPage - 1,
          (index) => ImageEntity(id: index + maxItemsPerPage));

      final expectedStates = [
        ImagesState.loading(),
        ImagesState.content(images: firstFetchResult, endReached: false),
        ImagesState.content(
            images: firstFetchResult + secondFetchResult, endReached: true)
      ];

      expect(imagesBloc.state, expectedStates[0]);

      when(getImages(any)).thenAnswer((_) async => Right(firstFetchResult));
      await imagesBloc.safeFetch();
      expect(imagesBloc.state, expectedStates[1]);

      when(getImages(any)).thenAnswer((_) async => Right(secondFetchResult));
      await imagesBloc.safeFetch();
      expect(imagesBloc.state, expectedStates[2]);

      verify(getImages(any)).called(2);
    });

    test('should have error state on failure', () async {
      when(getImages(any)).thenAnswer((_) async => Left(Failure.network()));
      expect(imagesBloc.state, ImagesState.loading());
      await imagesBloc.safeFetch();
      expect(imagesBloc.state, ImagesState.error(Failure.network()));
    });
  });
}
