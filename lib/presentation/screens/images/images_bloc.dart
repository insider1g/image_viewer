import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_viewer/base/error/failure.dart';
import 'package:image_viewer/data/utils/pageable_search.dart';
import 'package:image_viewer/domain/entity/image_entity.dart';
import 'package:image_viewer/domain/usecase/get_images.dart';
import 'package:injectable/injectable.dart';

import 'images_state.dart';

@injectable
class ImagesBloc extends Cubit<ImagesState> {
  final GetImages _getImages;
  final PageableSearch<ImageEntity> _pageableSearch;

  ImagesBloc(
      {@required GetImages getImages,
      @required PageableSearch<ImageEntity> pageableSearch})
      : this._getImages = getImages,
        this._pageableSearch = pageableSearch,
        super(ImagesState.loading());

  bool _lock = false;

  void search(String input) async {
    if (input == null) return;
    _pageableSearch.clear();
    _pageableSearch.keyword = input;
    safeFetch();
  }

  Future<void> safeFetch() async {
    if (_lock) return;
    _lock = true;
    await _fetch();
    _lock = false;
  }

  Future<void> _fetch() async {
    if (_pageableSearch.endReached) return;

    final page = _pageableSearch.pendingPage;
    final keyword = _pageableSearch.keyword;
    final perPage = _pageableSearch.maxItemsPerPage;

    if (_pageableSearch.isPending()) emit(ImagesState.loading());

    final result = await _getImages(
        Params(page: page, keyword: keyword, perPage: perPage));

    result.fold((failure) => _handleFailure(failure),
        (images) => _handleSuccess(images));
  }

  void _handleSuccess(List<ImageEntity> images) {
    _pageableSearch.append(images);

    final items = _pageableSearch.items;
    final endReached = _pageableSearch.endReached;

    items.isEmpty
        ? emit(ImagesState.empty())
        : emit(ImagesState.content(images: items, endReached: endReached));
  }

  void _handleFailure(Failure failure) {
    emit(ImagesState.error(failure));
  }

  @override
  Future<void> close() {
    _pageableSearch.dispose();
    return super.close();
  }

  String getCurrentKeyword() => _pageableSearch.keyword;
}
