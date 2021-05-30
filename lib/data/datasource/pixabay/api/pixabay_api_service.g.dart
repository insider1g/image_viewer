// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pixabay_api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _PixabayApiService implements PixabayApiService {
  _PixabayApiService(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://pixabay.com/api/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<PixabayPageable> getImages({page, perPage, keyword}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'page': page,
      r'per_page': perPage,
      r'q': keyword
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = PixabayPageable.fromJson(_result.data);
    return value;
  }
}
