import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_viewer/base/exception/exceptions.dart';
import 'package:image_viewer/data/datasource/pixabay/api/pixabay_api_service.dart';
import 'package:image_viewer/data/datasource/pixabay/mapper/pixabay_exception_mapper.dart';
import 'package:image_viewer/data/datasource/pixabay/mapper/pixabay_image_mapper.dart';
import 'package:image_viewer/data/datasource/pixabay/pixabay_network_datasource.dart';
import 'package:mockito/mockito.dart';
import 'package:matcher/matcher.dart';
import '../../mock/mock_reader.dart';

class MockDio extends Mock implements Dio {}

void main() {
  PixabayNetworkDatasource datasource;
  PixabayApiService pixabayApiService;
  PixabayImageMapper pixabayImageMapper;
  PixabayExceptionMapper pixabayExceptionMapper;
  Dio dio;

  setUp(() {
    dio = MockDio();
    pixabayApiService = PixabayApiService(dio);
    pixabayImageMapper = PixabayImageMapper();
    pixabayExceptionMapper = PixabayExceptionMapper();
    datasource = PixabayNetworkDatasource(
        api: pixabayApiService,
        mapper: pixabayImageMapper,
        exceptionMapper: pixabayExceptionMapper);
  });

  final page = 1;
  final perPage = 20;
  final keyword = 'city';

  group('pixabay network datasource tests', () {
    test('should return data with 200 code', () async {
      when(dio.request(any,
              data: anyNamed("data"),
              queryParameters: {
                'page': page,
                'per_page': perPage,
                'q': keyword
              },
              cancelToken: anyNamed("cancelToken"),
              options: anyNamed("options"),
              onSendProgress: anyNamed("onSendProgress"),
              onReceiveProgress: anyNamed("onReceiveProgress")))
          .thenAnswer((_) async => Response<Map<String, dynamic>>(
              statusCode: 200,
              data: json
                  .decode(readMock('page-1_perPage-20_keyword-city.json'))));

      final result = await datasource.getImages(
          page: page, perPage: perPage, keyword: keyword);

      expect(result, isNotEmpty);
      expect(result.length, perPage);
    });

    test('should return unauthorized exception on \'missing api key\' response',
        () async {
      when(dio.request(any,
              data: anyNamed("data"),
              queryParameters: {
                'page': page,
                'per_page': perPage,
                'q': keyword
              },
              cancelToken: anyNamed("cancelToken"),
              options: anyNamed("options"),
              onSendProgress: anyNamed("onSendProgress"),
              onReceiveProgress: anyNamed("onReceiveProgress")))
          .thenThrow(DioError(
              response: Response(
                  data: 'Invalid or missing API key', statusCode: 400)));

      final call =
          datasource.getImages(page: page, perPage: perPage, keyword: keyword);

      expect(() async => await call,
          throwsA(TypeMatcher<UnauthorizedException>()));
    });

    test('should return empty list on \'page param is out of range\' message',
        () async {
      when(dio.request(any,
              data: anyNamed("data"),
              queryParameters: {
                'page': page,
                'per_page': perPage,
                'q': keyword
              },
              cancelToken: anyNamed("cancelToken"),
              options: anyNamed("options"),
              onSendProgress: anyNamed("onSendProgress"),
              onReceiveProgress: anyNamed("onReceiveProgress")))
          .thenThrow(DioError(
              response: Response(
                  data: '"page" is out of valid range', statusCode: 400)));

      final call =
          datasource.getImages(page: page, perPage: perPage, keyword: keyword);

      expect(await call, isEmpty);
    });
  });
}
