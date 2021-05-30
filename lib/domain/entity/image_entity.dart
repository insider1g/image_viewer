import 'package:equatable/equatable.dart';

class ImageEntity extends Equatable {
  final int id;
  final String author;
  final String authorImageUrl;
  final String imageUrl;
  final String largeImageUrl;
  final String tags;

  ImageEntity(
      {this.id,
      this.author,
      this.authorImageUrl,
      this.imageUrl,
      this.largeImageUrl,
      this.tags});

  @override
  List<Object> get props =>
      [id, author, authorImageUrl, imageUrl, largeImageUrl, tags];
}
