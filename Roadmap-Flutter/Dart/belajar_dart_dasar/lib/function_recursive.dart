// function rekursive merupakan fucntion yang memanggil dirinya sendiri

// example kasus tanpa menerapkan function rekursive
int faktorialLoop(int value) {
  var result = 1;

  for (var i = 1; i <= value; i++) {
    result *= i;
  }

  return result;
}

// dan ini jika menerapkan rekursive
int faktorialWithRecursive(int value) {
  if (value == 1) {
    return 1;
  } else {
    return value * faktorialWithRecursive(value - 1);
  }
}

void main() {
  print(faktorialWithRecursive(10));
  print(faktorialLoop(10));
}
