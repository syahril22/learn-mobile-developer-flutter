void main() {
  var nilaiUjian = 80;
  var nilaiAbsen = 50;

  var nilaiUjianBagus = nilaiUjian >= 80;
  var nilaiAbsenBagus = nilaiAbsen >= 80;

  // var apakahLulus = nilaiUjianBagus && nilaiAbsenBagus;
  var apakahLulus = nilaiUjianBagus || nilaiAbsenBagus;
  print(apakahLulus);

  print(!true);
  print(!false);
}
