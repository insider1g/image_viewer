import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'pixabay_api_service.g.dart';

const imagesPath = "/";

@injectable
@RestApi(baseUrl: "https://pixabay.com/api/")
abstract class PixabayApiService {
  @factoryMethod
  factory PixabayApiService(@Named('pixabay_dio') Dio dio) = _PixabayApiService;

  @GET(imagesPath)
  Future<PixabayPageable> getImages(
      {@Query("page") int page,
      @Query("per_page") int perPage,
      @Query("q") String keyword});
}

class PixabayPageable {
  int total;
  int totalHits;
  List<PixabayImage> hits;

  PixabayPageable({this.total, this.totalHits, this.hits});

  factory PixabayPageable.fromJson(Map<String, dynamic> json) {
    return PixabayPageable(
        total: json["total"],
        totalHits: json["totalHits"],
        hits: List.of(json["hits"])
            .map((i) => PixabayImage.fromJson(i))
            .toList());
  }
}

class PixabayImage {
  int id;
  String pageUrl;
  String type;
  String tags;
  String previewUrl;
  int previewWidth;
  int previewHeight;
  String webformatUrl;
  int webformatWidth;
  int webformatHeight;
  String largeImageUrl;
  int imageWidth;
  int imageHeight;
  int imageSize;
  int views;
  int downloads;
  int favorites;
  int likes;
  int comments;
  int userId;
  String user;
  String userImageUrl;

  PixabayImage(
      {this.id,
      this.pageUrl,
      this.type,
      this.tags,
      this.previewUrl,
      this.previewWidth,
      this.previewHeight,
      this.webformatUrl,
      this.webformatWidth,
      this.webformatHeight,
      this.largeImageUrl,
      this.imageWidth,
      this.imageHeight,
      this.imageSize,
      this.views,
      this.downloads,
      this.favorites,
      this.likes,
      this.comments,
      this.userId,
      this.user,
      this.userImageUrl});

  PixabayImage.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    pageUrl = json['pageURL'];
    type = json['type'];
    tags = json['tags'];
    previewUrl = json['previewURL'];
    previewWidth = json['previewWidth'];
    previewHeight = json['previewHeight'];
    webformatUrl = json['webformatURL'];
    webformatWidth = json['webformatWidth'];
    webformatHeight = json['webformatHeight'];
    largeImageUrl = json['largeImageURL'];
    imageWidth = json['imageWidth'];
    imageHeight = json['imageHeight'];
    imageSize = json['imageSize'];
    views = json['views'];
    downloads = json['downloads'];
    favorites = json['favorites'];
    likes = json['likes'];
    comments = json['comments'];
    userId = json['user_id'];
    user = json['user'];
    userImageUrl = json['userImageURL'];
  }
}
