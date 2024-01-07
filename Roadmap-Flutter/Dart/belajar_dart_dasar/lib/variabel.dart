void main() {
  // perbedaan varibel final dan const, final datanya masih bisa di ubah walaupun tidak bisa di deklarasikan ulang varibalnya
  // sedangkan const variabel dan nilainya pun tidak bisa di dikelarasikan ulang
  // final array1 = [1, 2, 3];
  // const array2 = [1, 2, 3];

  // array1[0] = 5;
  // array2[0] = 5;

  // print(array1);
  // print(array2);

  // variabel late
  late var getValue = GetValue();
  print("get value sudah di panggil");
  print(getValue);
}

String GetValue() {
  print("getValue() dipanggil");
  return ("Syahril Sobirin");
}
