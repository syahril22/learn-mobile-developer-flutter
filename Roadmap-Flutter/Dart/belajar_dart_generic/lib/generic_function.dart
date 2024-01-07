// Dengan menggunakan generic functions, Anda dapat menulis fungsi yang dapat bekerja dengan berbagai jenis tipe data tanpa harus mengulang kode.

import 'package:belajar_dart_generic/helper/array_helper.dart';

void main() {
  var numbers = [1, 2, 4, 5];
  var names = ['syahril', 'aril'];

  print(ArrayHelper.count<int>(numbers));
  print(ArrayHelper.count(names));
}
