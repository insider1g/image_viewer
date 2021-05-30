import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:image_viewer/data/datasource/pixabay/api/interceptor/pixabay_auth_interceptor.dart';
import 'package:image_viewer/data/datasource/pixabay/api/interceptor/pixabay_image_props_interceptor.dart';
import 'package:image_viewer/data/utils/pageable_search.dart';
import 'package:image_viewer/domain/entity/image_entity.dart';
import 'package:image_viewer/domain/repository/image_repository.dart';
import 'package:image_viewer/domain/usecase/get_images.dart';
import 'package:injectable/injectable.dart';

import 'dependencies.config.dart';

final inject = GetIt.instance;

@InjectableInit(
  usesNullSafety: false,
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<GetIt> configureDependencies() async => $initGetIt(inject);

@module
abstract class HttpModule {
  @Named('pixabay_dio')
  @singleton
  Dio provideDio() => Dio()
    ..interceptors.addAll([
      PixabayAuthInterceptor(),
      PixabayImagePropsInterceptor(),
      LogInterceptor(
          requestHeader: false, responseHeader: false, request: false)
    ]);
}

@module
abstract class UseCasesModule {
  @injectable
  GetImages provideGetImages(ImageRepository imageRepository) =>
      GetImages(imageRepository);
}

@module
abstract class UtilsModule {
  @injectable
  PageableSearch<ImageEntity> providePageableSearch() =>
      PageableSearch<ImageEntity>(maxItemsPerPage: 20, defaultStartPage: 1);
}
