// Polimorfisme adalah salah satu konsep kunci dalam pemrograman berorientasi objek (OOP) yang memungkinkan objek untuk mengambil bentuk yang berbeda

// example polimorfisme 1
class Employe {
  String? name;

  Employe(this.name);
}

class Manager extends Employe {
  Manager(String name) : super(name);
}

class VirePresident extends Manager {
  VirePresident(String name) : super(name);
}

// example polimorfisme 2
class Shape {
  void draw() {
    print("Drawing a shape");
  }
}

class Circle extends Shape {
  @override
  void draw() {
    print("Drawing a circle");
  }
}

class Square extends Shape {
  @override
  void draw() {
    print("Drawing a square");
  }
}

void main() {
  // one
  Employe employe = Employe('Syahril');
  print(employe);

  employe = Manager('syahril');
  print(employe);

  employe = VirePresident('Syahril');
  print(employe);

  // two
  Shape shape = Circle();
  shape.draw();

  // Dalam contoh di atas, meskipun variabel shape dideklarasikan sebagai objek Shape, ia sebenarnya merujuk pada objek Circle pada saat runtime. Saat metode draw() dipanggil, versi yang benar dari metode ini yang dijalankan adalah milik Circle.
}
