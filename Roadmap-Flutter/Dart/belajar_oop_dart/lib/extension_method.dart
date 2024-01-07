// extension method adalah dimana kita bisa menambahkan method baru pada class yang sudah ada, tanpa merubah classnya
// ini bermanfaat jika classnya itu milik olang lain atau suatau library dimana bukan kita yang membuatnya
// extension method juga bisa mengkases field yang ada pada class person

// class biasa
class Person {
  String name = 'syahril';

  void sayHello() => print('Hallo $name');
}

// extension method
extension SayGoodBayOnPerson on Person {
  void sayGoodBay() => print('See you next time $name');
}

void main() {
  // cara manggilnya sama saja seperti method yg ada pada class biasanya
  var person = Person();
  person.sayGoodBay();
}
