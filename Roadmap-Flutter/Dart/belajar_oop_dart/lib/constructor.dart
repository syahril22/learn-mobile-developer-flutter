// Constructor sendiri diartikan sebagai fungsi khusus dari suatu class yang bertanggung jawab untuk menginisialisasi nilai awal dari properti yang ada di dalam class tersebut.

class Person {
  String name = 'Guest';
  String? age;
  final String country = 'Indonesia';

  // example controctor 1
  Person(String paramName, String paramAge) {
    name = paramName;
    age = paramAge;
  }
}

class Product {
  String? name;
  String? price;

  // example 2 controctor
  Product(this.name, this.price);
}

void main() {
  var person = Person('syahril', '18');
  print(person);
  print(person.name);
  print(person.age);

  var product = Product('serum', '18.000.00');
  print(product);
  print(product.name);
  print(product.price);
}
