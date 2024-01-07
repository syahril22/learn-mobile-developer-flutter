void main() {
  var counter = 100;
  // var counter = 1;
  // perulangan do while akan di eksekusi setidaknya satu kali meskipun kondisinya bernilai false
  do {
    print('perulangan ke-$counter');
    counter++;
  } while (counter <= 10);

  // sedangkan jika di for atau while, meereka tidak akan mengeksekusi jika kondisinya bernilai false
  for (int number = 100; number <= 10; number++) {
    print(number);
  }
}
