// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/datasource/image_network_datasource.dart' as _i10;
import '../data/datasource/pixabay/api/pixabay_api_service.dart' as _i6;
import '../data/datasource/pixabay/mapper/pixabay_exception_mapper.dart' as _i8;
import '../data/datasource/pixabay/mapper/pixabay_image_mapper.dart' as _i9;
import '../data/datasource/pixabay/pixabay_network_datasource.dart' as _i11;
import '../data/repository/image_repository_impl.dart' as _i13;
import '../data/utils/pageable_search.dart' as _i4;
import '../domain/entity/image_entity.dart' as _i5;
import '../domain/repository/image_repository.dart' as _i12;
import '../domain/usecase/get_images.dart' as _i14;
import '../presentation/screens/image/image_bloc.dart' as _i3;
import '../presentation/screens/images/images_bloc.dart' as _i15;
import 'dependencies.dart' as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final httpModule = _$HttpModule();
  final utilsModule = _$UtilsModule();
  final useCasesModule = _$UseCasesModule();
  gh.factory<_i3.ImageBloc>(() => _i3.ImageBloc());
  gh.factory<_i4.PageableSearch<_i5.ImageEntity>>(
      () => utilsModule.providePageableSearch());
  gh.factory<_i6.PixabayApiService>(
      () => _i6.PixabayApiService(get<_i7.Dio>(instanceName: 'pixabay_dio')));
  gh.factory<_i8.PixabayExceptionMapper>(() => _i8.PixabayExceptionMapper());
  gh.factory<_i9.PixabayImageMapper>(() => _i9.PixabayImageMapper());
  gh.factory<_i10.ImageNetworkDatasource>(() => _i11.PixabayNetworkDatasource(
      api: get<_i6.PixabayApiService>(),
      mapper: get<_i9.PixabayImageMapper>(),
      exceptionMapper: get<_i8.PixabayExceptionMapper>()));
  gh.factory<_i12.ImageRepository>(
      () => _i13.ImageRepositoryImpl(get<_i10.ImageNetworkDatasource>()));
  gh.factory<_i14.GetImages>(
      () => useCasesModule.provideGetImages(get<_i12.ImageRepository>()));
  gh.factory<_i15.ImagesBloc>(() => _i15.ImagesBloc(
      getImages: get<_i14.GetImages>(),
      pageableSearch: get<_i4.PageableSearch<_i5.ImageEntity>>()));
  gh.singleton<_i7.Dio>(httpModule.provideDio(), instanceName: 'pixabay_dio');
  return get;
}

class _$HttpModule extends _i16.HttpModule {}

class _$UtilsModule extends _i16.UtilsModule {}

class _$UseCasesModule extends _i16.UseCasesModule {}
