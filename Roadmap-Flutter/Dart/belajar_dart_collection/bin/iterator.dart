void main() {
  final names = ['syahril', 'lusy', 'aisha'];

  for (var name in names) {
    print(name);
  }

  // iterasi manual
  final iterator = names.iterator;
  while (iterator.moveNext()) {
    print(iterator.current);
  }
}
