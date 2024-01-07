void main() {
  List<String> names = ['syahril', 'sobirin', 'aril'];

  // bisa juga
  var number = <int>[1, 2, 3];

  print(number);

  // add
  names.add('lusy');

  // akses
  print(names[2]);

  // edit
  names[1] = 'apriliani';

  // hapus
  names.removeAt(1);

  print(names);

  print(names.length);
}
