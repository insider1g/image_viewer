import 'dart:collection';

class PageableSearch<T> {
  final int maxItemsPerPage;
  final int defaultStartPage;

  List<T> _items = [];
  List<T> get items => UnmodifiableListView(_items);

  int _pendingPage;
  int get pendingPage => _pendingPage;

  bool _endReached = false;
  bool get endReached => _endReached;

  String keyword;


  PageableSearch({this.maxItemsPerPage = 20, this.defaultStartPage = 1})
      : assert(maxItemsPerPage >= 10),
        this._pendingPage = defaultStartPage;

  void append(List<T> items) {
    _items += items;
    _endReached = items.length < maxItemsPerPage;
    _pendingPage += 1;
  }

  void clear() {
    _items.clear();
    _endReached = false;
    _pendingPage = defaultStartPage;
    keyword = null;
  }

  void dispose() {
    clear();
  }

  bool isPending() => _pendingPage == defaultStartPage;

}
