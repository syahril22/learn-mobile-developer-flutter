import 'package:belajar_dart_generic/data/mydata.dart';

void main() {
  var data1 = MyData('Syahril Sobirin');
  var data2 = MyData(100);
  var data3 = MyData(false);

  print(data1.data);
  print(data2.data);
  print(data3.data);
}
