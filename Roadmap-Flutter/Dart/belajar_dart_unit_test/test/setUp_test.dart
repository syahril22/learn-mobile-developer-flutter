import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  var data = "Syahril";

  setUp(() {
    data = "Syahril";
  });

  group('Test String', () {
    test('String first', () {
      // data = "Syahril";
      data = "$data Sobirin";
      expect(data, equals('Syahril Sobirin'));
    });

    test('String Second', () {
      // data = 'Syahril';
      data = "$data Aril";
      expect(data, equals("Syahril Aril"));
    });
  });
}
