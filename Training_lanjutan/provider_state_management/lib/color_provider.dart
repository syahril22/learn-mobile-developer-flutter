import 'package:flutter/material.dart';

class ColorProvider with ChangeNotifier {
  Color themeColor = Colors.red;
  int _counting = 0;

  int get counting => _counting;

  set counting(int value) {
    _counting = value;
    notifyListeners();
  }

  void changeColor() {
    if (_counting == 0) {
      themeColor = Colors.blue;
    } else if (_counting % 2 == 0) {
      themeColor = Colors.red;
    } else {
      themeColor = Colors.blue;
    }
    notifyListeners();
  }
}
