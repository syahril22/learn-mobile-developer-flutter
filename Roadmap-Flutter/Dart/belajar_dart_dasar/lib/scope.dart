void main() {
  var name = 'syahril';

  // function sayHello bisa mengakses variabel name karna mereka semua ada di lingkup main
  // tapi varibel yang ada di function sayHello tidak bisa di akes di luarnya
  void sayHello() {
    var hello = 'Hallo Kamu yang ada di sana';
    print('$hello $name');
  }

  sayHello();
  // print($hello); error
}
