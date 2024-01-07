// typedef atau alias ini jadinya ketika kita hendak membuat object dari class ini, kita tidak hanya bisa menggunakan Sum(), kita juga bisa menggunakan alias yang sudah kita buat dengan kata kunci typeDef

class Sum {
  int first;
  int second;

  Sum(this.first, this.second);

  int result() => first + second;
}

typedef Total = Sum;
typedef Jumlah = Sum;

void main() {
  // menggunakan sum
  var sum = Sum(10, 10);
  print(sum.result());
  // menggunakan total
  var total = Total(10, 10);
  print(total.result());
  // menggunakan jumlah
  var jumlah = Jumlah(10, 10);
  print(jumlah.result());
}
