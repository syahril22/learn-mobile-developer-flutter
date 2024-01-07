import 'dart:collection';

void main() {
  // ini
  // final set = <String>{};
  // sama saja kaya gini
  LinkedHashSet set = LinkedHashSet<String>();

  set
    ..add('syahril')
    ..add('sobirin')
    ..add('aril');

  print(set);
}
