import 'package:flutter_test/flutter_test.dart';
import 'package:image_viewer/data/utils/pageable_search.dart';

void main() {
  PageableSearch<int> pageableSearch;

  setUp(() {
    pageableSearch = PageableSearch(maxItemsPerPage: 10, defaultStartPage: 1);
  });

  group('testing pageable search', () {
    test('should contain added items', () {
      final itemsToAdd = 10;
      expect(pageableSearch.items, []);
      pageableSearch.append(List.generate(itemsToAdd, (index) => index));
      expect(pageableSearch.items.length, itemsToAdd);
    });

    test('should reach end after receiving less items than max', () {
      expect(pageableSearch.items, isEmpty);
      pageableSearch.append(
          List.generate(pageableSearch.maxItemsPerPage - 1, (index) => index));
      expect(pageableSearch.items.length,
          lessThan(pageableSearch.maxItemsPerPage));
      expect(pageableSearch.endReached, isTrue);
    });

    test('should keep keyword after appending data', () {
      pageableSearch.keyword = 'city';
      expect(pageableSearch.keyword, 'city');
      pageableSearch.append([1, 2, 3]);
      expect(pageableSearch.keyword, 'city');
    });

    test('should increment next page after adding items', () {
      expect(pageableSearch.defaultStartPage, pageableSearch.pendingPage);
      pageableSearch.append(
          List.generate(pageableSearch.maxItemsPerPage, (index) => index));
      expect(pageableSearch.pendingPage, pageableSearch.defaultStartPage + 1);
      expect(pageableSearch.endReached, isFalse);
    });

    test('should clear data after clearing', () {
      pageableSearch.keyword = 'animal';
      expect(pageableSearch.keyword, 'animal');
      pageableSearch.clear();
      expect(pageableSearch.keyword, isNull);
    });
  });
}
