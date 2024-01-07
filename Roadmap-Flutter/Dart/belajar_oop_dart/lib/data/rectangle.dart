class Rectangle {
  int _width = 1;
  int _height = 1;

  // cara pertama
  // int get width {
  //   return _width;
  // }

  // set width(int value) {
  //   _width = value;
  // }

  // int get height {
  //   return _height;
  // }

  // set height(int value) {
  //   _height = value;
  // }

  // bisa juga menggunakan method expression body
  // jika hanya ingin merubah fieldnya
  // akan tetapi bastpracticenya jika kita hanya ingin mengubah field dan mengakses, kita tidak perlu menggunakan getter dan setter, langsung saja seperti biasa
  // namun jika ada tambahan logika seperti di bawah ini maka baik menggunakan getter dan setter

  int get width {
    return _width;
  }

  set width(int value) {
    if (value >= 1) {
      _width = value;
    }
  }

  int get height {
    return _height;
  }

  set height(int value) {
    if (value >= 1) {
      _height = value;
    }
  }
}
