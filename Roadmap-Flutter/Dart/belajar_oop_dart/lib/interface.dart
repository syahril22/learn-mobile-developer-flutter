// interface

import 'data/car.dart';

void main() {
  var carAvanza = Avanza();
  print(carAvanza.name);
  carAvanza.drive();
  print(carAvanza.getTier());
}
