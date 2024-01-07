import 'dart:collection';

void main() {
  final set = HashSet<String>();

  // kita add
  set
    ..add('syahril')
    ..add('lusy')
    ..add('aril')
    ..add('sobirin');

  print(set);
}

// proses add data lebih cepat namun
// urutan data dari hash set tidak teratur, karna tergantung hash code nya

