import 'package:dsa/data_structures/array.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final items = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];

  group('Data Structures Test', () {
    test('Array class test', () {
      final array = Array(10);
      for (final item in items) {
        array.insert(item);
      }
      try {
        array.insert(11);
      } catch (e) {
        prints(e);
      }
      expect(array.data, items);
      expect(array.search(2), 2);
      expect(array.search(15), null);

      for (final item in items) {
        array.delete(item);
      }

      expect(
        array.data,
        [null, null, null, null, null, null, null, null, null, null],
      );
    });
  });
}
