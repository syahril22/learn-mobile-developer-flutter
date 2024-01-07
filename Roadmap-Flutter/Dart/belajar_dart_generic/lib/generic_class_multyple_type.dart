import 'package:belajar_dart_generic/data/pair.dart';

void main() {
  // bisa kaya gini
  var pair1 = Pair("syahril", 100);
  // bisa lebih eksplisit kaya gini
  var pair2 = Pair<bool, int>(true, 300);

  print(pair1.first);
  print(pair1.second);

  print(pair2.first);
  print(pair2.second);
}
