// abstract class
// abstract class biasanya digunakan hanya untuk membuat parent class saja dimana class ini hanya bisa mewarisi dan tidak bisa membuat object, untuk membuat object kita harus membuat dulu class turunannya

import 'package:belajar_oop_dart/data/location.dart';

void main() {
  // kalo kita mencoba membuat object dari abstract class maka akan error
  // var location = Location();

  // kalo kita membuat object dari class turunanya maka bisa
  var city = City('Jakarta');
  print(city.name);
}
