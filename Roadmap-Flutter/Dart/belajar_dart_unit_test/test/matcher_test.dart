import 'package:test/test.dart';

import 'expect_test.dart';

String seyHello(String name) {
  return "Hallo $name";
}

int sum(int a, int b) {
  return a + b;
}

void main() {
  test('Test sayHello()', () {
    expect(sayHello('Syahril'), endsWith('Syahril'));
    expect(sayHello('Syahril'), startsWith('Hallo'));
    expect(sayHello('Syahril'), equalsIgnoringCase('hallo syahril'));
    expect(sayHello('Syahril'), isA<String>());
  });

  test('Test Sum()', () {
    expect(sum(1, 1), equals(2));
    expect(sum(1, 1), greaterThan(1));
    expect(sum(1, 1), lessThan(10));
  });
}
