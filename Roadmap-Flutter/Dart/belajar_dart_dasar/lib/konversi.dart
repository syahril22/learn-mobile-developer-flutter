void main() {
  var inputString = "100";
  var stringToInt = int.parse(inputString);
  var stringToDouble = double.parse(inputString);

  print(inputString);
  print(stringToInt);
  print(stringToDouble);

  var intToDouble = stringToInt.toDouble();
  var doubleToInt = stringToDouble.toInt();
  var intToString = stringToInt.toString();

  print(intToDouble);
  print(doubleToInt);
  print(intToString);
}
