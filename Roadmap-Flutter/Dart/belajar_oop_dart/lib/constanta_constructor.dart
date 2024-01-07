class ImmutablePoint {
  final int x;
  final int y;

  const ImmutablePoint(this.x, this.y);
}

void main() {
  const point1 = ImmutablePoint(8, 9);
  const point2 = ImmutablePoint(8, 9);

  print(point1 == point2);
}

// Ketika Anda membuat objek dengan menggunakan constant constructor dalam Dart, sistem akan mencoba untuk memanfaatkan cache objek pada waktu kompilasi. Jika objek dengan nilai yang sama telah dibuat sebelumnya, maka objek yang baru dibuat akan menggunakan referensi ke objek yang sudah ada dalam cache, sehingga objek yang baru sebenarnya tidak dibuat ulang.
