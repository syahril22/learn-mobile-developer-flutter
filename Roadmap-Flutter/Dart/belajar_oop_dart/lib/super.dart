// super digunakan ketika kita sudah terlanjur mengoveride method atau field yang ada pada class parent ke class childd, akan tatapi kita ingin mengakses method atau field yg ada pada parent dalam class child maka gunakan super

// parent
class Shape {
  int getCorner() {
    return 0;
  }
}

// child
class Rectangle extends Shape {
  @override
  int getCorner() {
    return 4;
  }

  // mengambil method yg parent
  int getParentCorner() {
    return super.getCorner();
  }
}

void main() {
  var shape = Shape();
  print(shape.getCorner());

  var rictangle = Rectangle();
  print(rictangle.getCorner());
  print(rictangle.getParentCorner());
}
