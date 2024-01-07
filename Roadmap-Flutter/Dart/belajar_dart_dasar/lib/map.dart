void main() {
  // beberapa cara penulisan
  Map<String, String> names1 = {};
  var names2 = Map<String, String>();
  var names3 = <String, String>{'first': 'lusy', 'lastname': 'apriliani'};

  // add
  names1['firstName'] = 'syahril';
  names1['secondName'] = 'sobirin';
  names1['lastName'] = 'aril';

  print(names1);

  // remove
  names1.remove('lastName');
  print(names1);

  print(names1.length);

  // deklarasi di awal
  print(names3);

  print(names2);
}
