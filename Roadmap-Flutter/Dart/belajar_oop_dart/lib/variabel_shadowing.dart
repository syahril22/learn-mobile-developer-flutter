// variabel shadowing

class Person {
  String name = 'Guest';
  String? age;

  Person(String name, String age) {
    name = name;
    age = age;
  }
}

void main() {
  var person = Person('syahril', '18');
  print(person.name);
  print(person.age);
}

// jadinya outputnya adalah yang sudah di deklarasikan awal, karna construcor tidak bisa mengakses field yang ada pada classnya

// untuk mengatasinya kita bisa menggunakan this
