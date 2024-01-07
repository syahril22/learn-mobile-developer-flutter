void main() {
  // di dalam for ini ada tiga bagian,
  /**
   * init statement
   * kondisinya
   * post statement
   */

  // cara pertama
  // var counter = 1;
  // for (; counter <= 10;) {
  //   print('counter ke-$counter');
  //   counter++;
  // }

  // cara kedua
  // for (int counter = 1; counter <= 10; counter++) {
  //   print('counter ke-$counter');
  // }
  int sum = 0;

  for (int i = 1; i <= 100; i++) {
    if (i % 2 != 0) {
      // Jika i adalah bilangan ganjil
      sum += i;
    }
  }

  print('Jumlah bilangan ganjil dari 1 hingga 100 adalah: $sum');
}
