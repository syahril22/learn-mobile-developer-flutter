void main() {
  // for in digunakan ketika kita hendak melakukan iterasi/perulangan data dalam list atau set

  // jika kita melakukan tanpa for in
  // kodenya cukup lumayan ribet dan tidak bisa di gunakan dalam set karna harus pake index
  List<String> name = ['syahril', 'sobirin', 'aril'];

  for (var i = 0; i < name.length; i++) {
    print(name[i]);
  }

  // ini jika menggunakan for in
  List<int> number = [1, 3, 6, 7];

  for (int value in number) {
    print(value);
  }

  // kita coba dalam Set
  Set<String> names = {'sueb', 'sule', 'jajang'};

  for (var value in names) {
    print(value);
  }
}
