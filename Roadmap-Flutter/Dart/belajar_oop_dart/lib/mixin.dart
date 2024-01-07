// Mixin
// mixin merupakan reusable code yg bisa digunakan di kelas lain tanpa harus terkendala dengan pewarisan
// mixin mirip melakukan copy paste code di beberapa tenpat, namun dengan cara yg lebih baik
// dengan mixin, kita bisa membuat kode yg sama pada beberapa class
// satu class bisa menambahkan lebih dari satu mixin, sama seperti interface
// untuk membuat mixin, kita bisa menggunakan kata kunci mixin
// untuk menggunakan mixin kita bisa gunakan kata kunci with, diikuti dengan mixinnya

// secara default, semua class bisa menggunakan mixin
// namun jika ingin membatasi hanya class turunan kita bisa tambahkan kata kunci on diikuti dengan class yg kita batasi pada mixinnya

// example
abstract class Animal {}

mixin Flying on Animal {
  void fly() {
    print("Flying high!");
  }
}

// class yang menggunakan mixin
// dengan melakukan mixin otomatis object yg dibuat dari class Bird bisa mengakses method fly
class Bird extends Animal with Flying {
  String name;

  Bird(this.name);
}

// contoh penggunaan
void main() {
  var sparrow = Bird('Sparrow');
  sparrow.fly();
  print("${sparrow.name} is flying");
}
