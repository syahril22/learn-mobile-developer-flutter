import 'dart:collection';

void main() {
  final numbers = [1, 2, 3, 4, 5];
  final numbersUnmodifiableList = UnmodifiableListView(numbers);

  // coba kita add
  numbersUnmodifiableList.add(10);
  // maka dia akan error

  // itu dia kegunaan dari unmodifiable list, jadi list yg sudah kita buat tidak dapat di ubah
}
