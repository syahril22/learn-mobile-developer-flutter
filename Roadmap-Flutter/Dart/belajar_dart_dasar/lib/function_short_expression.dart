// function digunakan ketika functionnya berisi satu baris saja
// dengan function short expression ini, kita tidak lagi butuh {} dan kalo mengmbalikan nilai kita juga tidak butuh return

// example

int sum(int first, int second) => first + second;

void main() {
  var result = sum(10, 10);
  print(result);

  // atau juga bisa langsung
  print(sum(5, 5));
}
