// field overriding
// mendeklarasikan ulang field yang ada pada class parent ke class child

class Person {
  String name = 'Person';

  void sayHello(String name) {
    print('Hello $name, my name is ${this.name}');
  }
}

class OtherPerson extends Person {
  @override
  String name = 'Other Person';
}

void main() {
  var person = Person();
  person.sayHello('Aril');

  var otherPerson = OtherPerson();
  otherPerson.sayHello('syahril');
}
