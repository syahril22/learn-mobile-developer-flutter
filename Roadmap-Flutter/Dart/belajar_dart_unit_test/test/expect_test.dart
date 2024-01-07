import 'package:test/test.dart';

String sayHello(String name) {
  return 'Hallo $name';
}

void main() {
  test('test seyHello', () {
    var response = sayHello('Syahril');
    expect(response, 'Hallo Syahril');
  });
}
