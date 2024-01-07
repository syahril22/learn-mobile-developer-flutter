// class Calculator {
//   int? num1;
//   int? num2;

//   Calculator(this.num1, this.num2);

//   int addition() {
//     return num1! + num2!;
//   }

//   int subtraction() {
//     return num1! - num2!;
//   }

//   int multiplication() {
//     return num1! * num2!;
//   }

//   int division() {
//     return num1! ~/ num2!;
//   }
// }

// void main() {
//   var calculator = Calculator(8, 8);
//   print(calculator.addition());
//   print(calculator.division());
// }

class PrimaChaker {
  int? number;

  PrimaChaker(this.number);

  bool check() {
    if (number! / 1 == number && number! / number! == number) {
      return true;
    } else {
      return false;
    }
  }
}

void main() {
  var primacheck = PrimaChaker(4);
  print(primacheck.check());
}
