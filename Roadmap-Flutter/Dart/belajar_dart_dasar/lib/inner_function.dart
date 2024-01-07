// inner function merupakan function didalam function
// function parent nya di sebut outer function
// inner function hanya dapat di akses di lingkup outer function saja, tidak bisa di luar itu

// example

void main() {
  void sayHello() {
    print('Hello world');
  }

  sayHello();
  sayHello();
}
