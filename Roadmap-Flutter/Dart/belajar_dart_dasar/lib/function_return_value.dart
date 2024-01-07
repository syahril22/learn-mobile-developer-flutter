int sum(List<int> numbers) {
  int total = 0;

  // for (int value in numbers) {
  //   total += value;
  // }

  for (var i = 0; i < numbers.length; i++) {
    total += numbers[i];
  }

  return total;
}

int sum2(List<int> numbersss) {
  int jumlahKeseluruhan = 0;
  for (var i = 0; i < numbersss.length; i++) {
    jumlahKeseluruhan += numbersss[i];
  }

  return jumlahKeseluruhan;
}

void main() {
  print(sum2([5, 5, 5]) + sum([10, 10, 10]));
}
