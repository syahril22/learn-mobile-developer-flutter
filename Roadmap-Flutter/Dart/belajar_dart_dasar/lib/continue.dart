void main() {
  // continue digunakan untuk menghentikan perulangan dan lanjut ke perulangan selanjutnya
  // tidak menghentikan total seperti break, namun dia hanya men skip

  for (var number = 1; number <= 100; number++) {
    if (number % 2 != 0) {
      continue;
    }

    print('perulangan ke-$number');
  }
}

// hasilnya adala yang akan muncul hanya bilangan genap saja dari 1 - 100
