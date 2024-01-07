void main() {
  // set juga untuk menampung nilai sama dengan list
  // namun terdapat perbedaan :
  // set tidak memiliki index
  // set valuenya bersifat unik tidak bisa double, jika double maka akan di anggap satu yg lain di hiraukan

  Set<int> number = {1, 2, 3};

  print(number.length);
  print(number);

  var names = <String>{'syahril', 'sobirin', 'aril'};

  print(names);

  // add in set
  names.add('lusy');

  // remove in set
  names.remove('aril');

  print(names);
}
