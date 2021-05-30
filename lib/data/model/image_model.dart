import 'package:flutter/material.dart';
import 'package:image_viewer/domain/entity/image_entity.dart';
import 'package:meta/meta.dart';

class ImageModel extends ImageEntity {
  ImageModel(
      {@required int id,
      @required String author,
      @required String authorImageUrl,
      @required String imageUrl,
      @required String largeImageUrl,
      @required String tags})
      : super(
            id: id,
            author: author,
            authorImageUrl: authorImageUrl,
            imageUrl: imageUrl,
            largeImageUrl: largeImageUrl,
            tags: tags);
}
