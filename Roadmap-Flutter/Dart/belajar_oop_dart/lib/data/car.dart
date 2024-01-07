// interface

// multiple interface inheritance
// dengan interface kita bisa melakukan pewarisan dari banyak parent, hal ini bisa terjadi karna dengan interface implements bukanlah melakuakn pewarisan, melainkan mendeklarasikan ulang seluruh method dan fieldnya, gunakan koma untuk menerapkannya

class Car {
  String name = "";

  void drive() {}

  int getTier() {
    return 0;
  }
}

// untuk multiple interface
abstract class HasBrand {
  String getBrand();
}

// childnya
// jika kita menggunakan abstarct class, kita tidak harus mendeklarasikan ulang field dan method nya
// tapi kalo class interface kita wajib mendeklarasikana ulang
class Avanza implements Car, HasBrand {
  // ini menerapkan multiple interface
  @override
  String getBrand() => 'Toyota';

  @override
  String name = "avanza";

  @override
  void drive() {
    print(' Drive $name runnig');
  }

  @override
  int getTier() {
    return 4;
  }
}
