// function tanpa parameter
void say() {
  print('hello world');
}

// function dengan parameter
void sayHello(String name, int age) {
  print('Helo $name, umurku $age');
}

// optional parameter (harus di tempatkan di akhir)
void hello(String firstName, [String? middleName, String? lastName]) {
  print('hallo nama lengkah saya $firstName $middleName $lastName');
}

// optional parameter (harus di tempatkan di akhir)
void devaultValue(String firstName,
    [String? middleName = 'sobirin', String? lastName = '']) {
  print('hallo nama lengkah saya $firstName $middleName $lastName');
}

void main() {
  // hasil tanpa parameter
  say();

  // hasil dengan patameter
  sayHello('syahril', 19);
  sayHello('sobirin', 20);

  // hasil optional parameter
  hello('syahril');
  hello('syahril', 'sobirin');
  hello('syahril', 'sobirin', 'aril');

  // hasil devaultValue
  devaultValue('syahril');
}

// ternyata function dan method itu sama saja, karna dalam beberapa bahasa function di sebut dengan method
