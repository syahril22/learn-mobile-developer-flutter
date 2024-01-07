import 'data/rectangle.dart';

void main() {
  var rectangle = Rectangle();

  // aksess field menggunakan method getter
  print(rectangle.width);
  print(rectangle.height);

  // mengubah field dengan method setter
  rectangle.width = 100;
  rectangle.height = 100;

  print(rectangle.width);
  print(rectangle.height);
}
