class Person {
  String name = 'Guest';
  String? age;

  // ini sebetulnya sudah menerapkan initializing formal parameter
  Person(this.name, this.age);
}

void main() {
  var person = Person('syahril', '18');
  print(person.name);
  print(person.age);
}

// jadinya outputnya adalah yang sudah di deklarasikan awal, karna construcor tidak bisa mengakses field yang ada pada classnya
