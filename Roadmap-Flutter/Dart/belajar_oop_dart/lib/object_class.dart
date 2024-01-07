// object class adalah parent dari segala class
// contohnya kita bisa mengakses toString

class Person {
  int? age;

  Person(this.age);
}

void main() {
  var number = 100;
  print(number.toString());

  var person = Person(18);
  print(person.toString());
}
