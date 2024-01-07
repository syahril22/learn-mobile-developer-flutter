// equals operator
// Secara bawaan, metode == yang diwarisi dari kelas Object membandingkan identitas objek, yaitu apakah dua objek merujuk pada lokasi memori yang sama. Oleh karena itu, jika kita membuat dua objek dengan nilai yang sama, mereka dianggap tidak sama

// example :
// class CustomObject {
//   int value;

//   CustomObject(this.value);
// }

// void main() {
//   var obj1 = CustomObject(42);
//   var obj2 = CustomObject(42);

//   print(obj1 == obj2);
// }

// ouputny adalah flase, padahal valuenya sama
// Untuk mengatasi ini, kita dapat meng-override metode == dalam kelas kita agar membandingkan nilai objek, bukan identitasnya. Berikut adalah contohnya:

class CustomObject {
  int value;

  CustomObject(this.value);

  @override
  bool operator ==(Object other) {
    if (other is CustomObject) {
      if (value != other.value) {
        return false;
      } else {
        return true;
      }
    } else {
      return false;
    }
  }

  // Pastikan juga untuk meng-override metode hashCode bersamaan dengan metode == untuk memastikan bahwa objek yang setara memiliki nilai hash yang sama.
  @override
  int get hashCode {
    var result = value.hashCode;
    return result;
  }
}

void main() {
  var obj1 = CustomObject(42);
  var obj2 = CustomObject(42);

  print(obj1 == obj2);
  print(obj1.hashCode);
  print(obj2.hashCode);
}


// Dengan meng-override metode ==, kita memberikan logika khusus untuk memeriksa kesamaan nilai objek.