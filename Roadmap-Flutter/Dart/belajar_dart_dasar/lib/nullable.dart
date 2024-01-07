void main() {
  String? name;

  // default value akan lebih singkat dari ternary operator
  String panggilName = name ?? 'syahril';

  // ini kalo pake ternary operator
  // String findName = name != null ? name : 'syahril';

  print(panggilName);

  // mengakses member
  // int? intNumber;

  // double? intToDouble = intNumber?.toDouble();

  // print(intToDouble);
}
