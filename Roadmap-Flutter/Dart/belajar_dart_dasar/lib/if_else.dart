void main() {
  var nilaiUjian = 80;
  var nilaiAbsen = 50;

  if (nilaiUjian >= 75 && nilaiAbsen >= 75) {
    print('anda lulus');
  } else if (nilaiUjian >= 60 && nilaiAbsen >= 60) {
    print("anda bisa mengulang kembali");
  } else {
    print('anda tidak lulus');
  }
}
