import 'dart:io';

import 'package:dio/dio.dart';
import 'package:image_viewer/base/exception/exceptions.dart';
import 'package:image_viewer/domain/entity/image_entity.dart';
import 'package:image_viewer/domain/mapper/mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class PixabayExceptionMapper extends Mapper<dynamic, List<ImageEntity>> {
  @override
  List<ImageEntity> map(dynamic exception) {
    if (exception is DioError) {
      if (exception.error is SocketException) throw NetworkException();
      final response = exception.response.data;
      if (response is String) {
        if (response.contains('"page" is out of valid range')) return [];
        if (response.contains('Invalid or missing API key'))
          throw UnauthorizedException();
      }
      throw exception.error;
    }
    throw exception;
  }
}
