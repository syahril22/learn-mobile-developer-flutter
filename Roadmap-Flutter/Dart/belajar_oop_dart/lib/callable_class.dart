class Sum {
  int first;
  int second;

  Sum(this.first, this.second);

  // method call()
  int call() => first + second;
}

void main() {
  var sum = Sum(10, 10);
  // maggil method call
  print(sum());
}
