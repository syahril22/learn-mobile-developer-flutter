class Person {
  String? name;
  static final String country = 'Indonesia';

  // dengan static ini kita bisa mengakses field county tanpa membuat objectnya
  // dan jika kita membuat static, alangkah baiknya kita menggunakan final, karna static bersifat global dan bisa di akses dan di rubah di mana saja, jadi sangat berbahaya
}

void main() {
  print(Person.country);
}
