import 'package:image_viewer/domain/entity/image_entity.dart';

abstract class ImageNetworkDatasource {
  Future<List<ImageEntity>> getImages({int page, int perPage, String keyword});
}
