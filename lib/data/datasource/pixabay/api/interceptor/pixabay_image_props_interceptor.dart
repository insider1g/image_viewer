import 'package:dio/dio.dart';

class PixabayImagePropsInterceptor extends Interceptor {
  @override
  Future onRequest(RequestOptions options) {
    final queryParams = options.queryParameters;
    queryParams["image_type"] = 'photo';
    queryParams["safesearch"] = 'true';
    return super.onRequest(options);
  }
}
