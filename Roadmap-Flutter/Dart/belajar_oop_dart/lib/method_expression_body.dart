class Laptop {
  // method tanpa expression body
  void shotdownLaptop() {
    print('laptop is shotdown');
  }

  // jika kita menggunakan expression body
  void startingLaptop() => print('Laptop is starting');

  // method expression body dengan return
  String systemOpration() => 'Windows';
}

void main() {
  // memanggil method expression body sama saja seperti biasanya
  var laptop = Laptop();
  laptop.startingLaptop();
  laptop.shotdownLaptop();
  print(laptop.systemOpration());
}
