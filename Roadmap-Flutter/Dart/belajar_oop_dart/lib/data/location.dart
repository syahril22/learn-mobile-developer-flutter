// abstract class
// merupakan class yg hanya bisa mewarisi dan tidak bisa membuat object secara lansung
// untuk membuat object kita harus membuat dulu class turunannya
// abstract class ini seperti class pada umumnya bisa memiliki properti, method dan juga constructor

abstract class Location {
  String? name;
}

class City extends Location {
  City(String name) {
    this.name = name;
  }
}
