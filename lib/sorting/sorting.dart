void main(List<String> args) {
  final list = [3, 1, 5, 2, 4, 7, 6];

  print(Sorting.insertionSort(list));
}

class Sorting {
  static List<int> selectionSort(List<int> list) {
    // O(n^2)

    for (int i = 0; i < list.length; i++) {
      int min = i;

      for (int j = i + 1; j < list.length; j++) {
        if (list[j] < list[min]) {
          min = j;
        }
      }

      int temp = list[i];
      list[i] = list[min];
      list[min] = temp;
    }
    return list;
  }

  static List<int> insertionSort(List<int> list) {
    // O(n^2)

    for (int i = 1; i < list.length; i++) {
      int j = i - 1;
      int key = list[i];
      while (j >= 0 && list[j] > key) {
        list[j + 1] = list[j];
        j--;
      }

      list[j + 1] = key;
    }
    return list;
  }
}
