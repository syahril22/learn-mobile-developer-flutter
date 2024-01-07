enum Gender {
  male,
  female,
}

class Person {
  String name;
  Gender gender;

  Person(this.name, this.gender);
}

void main() {
  var person1 = Person('Syahril', Gender.male);
  print(person1.name);
  print(person1.gender);

  // mengakses semua value pada enum
  print(Gender.values);
}
