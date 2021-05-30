import 'package:image_viewer/data/model/image_model.dart';
import 'package:image_viewer/data/datasource/pixabay/api/pixabay_api_service.dart';
import 'package:image_viewer/domain/entity/image_entity.dart';
import 'package:image_viewer/domain/mapper/image_mapper.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class PixabayImageMapper extends ImageMapper<PixabayImage> {
  @override
  ImageEntity map(PixabayImage image) => ImageModel(
      id: image.id,
      author: image.user,
      authorImageUrl: image.userImageUrl,
      imageUrl: image.webformatUrl,
      largeImageUrl: image.largeImageUrl,
      tags: image.tags);
}
