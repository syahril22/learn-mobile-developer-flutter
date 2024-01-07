class Person {
  String name = 'Guest';
  String? address;

  // constructor biasa
  Person(this.name, this.address);

  // redirect constructor
  Person.withName(String name) : this(name, "No Address");
  Person.withAddress(String address) : this('No Name', address);
}

void main() {
  // membuat object dengan named constructor
  var person1 = Person.withName('syahril');
  print(person1.name);
  print(person1.address);

  var person2 = Person.withAddress('Bogor');
  print(person2.name);
  print(person2.address);
}
