import 'package:dio/dio.dart';

class PixabayAuthInterceptor extends Interceptor {
  @override
  Future onRequest(RequestOptions options) {
    final queryParams = options.queryParameters;
    queryParams["key"] = const String.fromEnvironment("PIXABAY_AUTH_KEY");
    return super.onRequest(options);
  }
}