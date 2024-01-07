// secara default contructor hanya boleh satu
// jika ingin lebih dari satu bisa gunakan named contsruktor

class Person {
  String name = 'Guest';
  String? address;

  // constructor biasa
  Person(this.name, this.address);

  // named constructor
  Person.withName(this.name);
  Person.withAddress(this.address);
}

class Barang {
  String? name;

  Barang() {
    print('Halloo World');
  }
}

void main() {
  // membuat object dengan named constructor
  var person1 = Person.withName('syahril');
  print(person1.name);
  print(person1.address);

  var person2 = Person.withAddress('Bogor');
  print(person2.name);
  print(person2.address);

  Barang barang = Barang();
  print(barang);
}
