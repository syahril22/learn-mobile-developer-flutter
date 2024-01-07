// anonymous function adalah function yang tidak memiliki nama

void sayHello(String name, String Function(String) fillter) {
  print('Hallo ${fillter(name)}');
}

void main() {
  // anonymoust function pada yg merubah ke uppercaase
  sayHello('Sobirin Syahril', (name) {
    return name.toLowerCase();
  });

  // ini anonymous function dengan penulisan short expression menjadi lebih singkat
  sayHello('Syahril Sobirin', (name) => name.toUpperCase());

  // ini kita masukan function ke variabel
  var upperCaseName = (String name) {
    return name.toUpperCase();
  };

  // cara manggilnya, panggil nama variabelnya dan kasih parameternya
  print(upperCaseName('syahril'));
}
