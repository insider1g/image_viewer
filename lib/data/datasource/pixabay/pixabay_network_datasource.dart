import 'package:flutter/foundation.dart';
import 'package:image_viewer/data/datasource/image_network_datasource.dart';
import 'package:image_viewer/data/datasource/pixabay/api/pixabay_api_service.dart';
import 'package:image_viewer/data/datasource/pixabay/mapper/pixabay_image_mapper.dart';
import 'package:image_viewer/domain/entity/image_entity.dart';
import 'package:injectable/injectable.dart';

import 'mapper/pixabay_exception_mapper.dart';

@Injectable(as: ImageNetworkDatasource)
class PixabayNetworkDatasource extends ImageNetworkDatasource {
  final PixabayApiService _api;
  final PixabayImageMapper _mapper;
  final PixabayExceptionMapper _exceptionMapper;

  PixabayNetworkDatasource(
      {@required PixabayApiService api,
      @required PixabayImageMapper mapper,
      @required PixabayExceptionMapper exceptionMapper})
      : this._api = api,
        this._mapper = mapper,
        this._exceptionMapper = exceptionMapper;

  @override
  Future<List<ImageEntity>> getImages(
      {int page, int perPage, String keyword}) async {
    return _api
        .getImages(page: page, perPage: perPage, keyword: keyword)
        .then((response) => response.hits)
        .then((items) => items.map((i) => _mapper.map(i)).toList())
        .catchError((error) => _exceptionMapper.map(error));
  }
}
