// cascade notation mempermudah kita untuk mengakses field yang ada pada class ketika kita membuat object

class User {
  String? username;
  String? name;
  String? email;
}

User? createUser() {
  return null;
}

void main() {
  // membuat object tanpa cascade notation
  var user1 = User();
  user1.username = 'syahril sobirin';
  user1.name = 'syahril';
  user1.email = 'syharil@contoh.com';

  // membuat object dengan cascade notation
  // var user2 = User()
  //   ..username = 'usman sholeh'
  //   ..name = 'usman'
  //   ..email = 'usman@gmail.com';

  // var user3 = createUser()
  //   ?..username = 'Micahel'
  //   ..name = 'Michael'
  //   ..email = 'Michael@gmail.com';
}





// dicomentar biar tidak ada kuning
