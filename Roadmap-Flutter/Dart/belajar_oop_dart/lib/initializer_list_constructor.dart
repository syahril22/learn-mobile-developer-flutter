class Person {
  String? name;
  int? age;

  // initializer constructor dengan mengolahan tambahan
  Person(String name, int age)
      : name = _capitalizeName(name),
        age = _validateAge(age);

  // method _capitalizeName
  static String _capitalizeName(String name) {
    return name.substring(0, 1).toUpperCase() + name.substring(1);
  }

  // method _validateAge
  static int _validateAge(int age) {
    return age < 0 ? 0 : age;
  }

  void displayInfo() {
    print('My name $name, and my old $age');
  }
}

void main() {
  var person = Person('syahril sobirin', 18);
  print(person.name);
  print(person.age);
  person.displayInfo();
}

// Dalam kasus di atas, initializer list digunakan untuk memproses nama (_capitalizeName) dan usia (_validateAge) sebelum objek Person sebenarnya dibuat. Hal ini membantu memastikan bahwa nilai-nilai tersebut sesuai dengan aturan tertentu sebelum digunakan dalam objek yang dihasilkan.









