// named parameter ini ketika kita memanggil functionnya, parameter yang dimasukan urutannya bebas, karna menggunakan key dan value
// secara default named parameter itu nullabel jadi harus ada ?

// void sayHello({String? firstName, String? lastName}) {
//   print('Heloo saya $firstName $lastName');
// }

// named parameter juga bisa default value
// void sayHello({String? firstName, String lastName = ''}) {
//   print('Heloo saya $firstName $lastName');
// }

// named parameter juga punya required jadi parameternya wajib di isi
// dan jika required artinya tidak bisa memanggil tanpa parameter
void sayHello({required String firstName, String lastName = ''}) {
  print('Heloo saya $firstName $lastName');
}

// hasil
void main() {
  // sayHello();
  sayHello(lastName: 'sobirin', firstName: 'syahril');
  sayHello(firstName: 'syahril');
  sayHello(firstName: 'syahril', lastName: 'sobirin');
}
