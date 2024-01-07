// list fix ini list yg tidak bisa ditambahkan
// kalo di rubah masih bisa

void main() {
  final numbers = List<int>.filled(10, 0);
  print(numbers);

  // penjelasam filled
  // filled(lenght, default value);
  // merupakan constructor yg sudah disediakan diamana parameter awalnya adalah jumlah data dari listnya dan parameter kedua adalah defaulf valuenya

  // ubah data
  numbers[0] = 1;
  numbers[1] = 3;
  numbers[2] = 5;

  print(numbers);
}
