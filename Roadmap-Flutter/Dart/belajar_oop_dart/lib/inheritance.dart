// inheritance merupakan pewarisan, dimana class child bisa mewarisi properti dan method yang ada pada class parent

class Manager {
  String? name;

  void sayHello(String name) {
    print('Hello $name, my name is ${this.name}');
  }
}

class WakilManager extends Manager {
  void introDuction(String name) {
    print('Hallo $name, my name is ${this.name}');
  }
}

void main() {
  var manager = Manager();
  print(manager.name = 'syahril');
  manager.sayHello('aril');

  var wakilmanager = WakilManager();
  print(wakilmanager.name = 'lusy');
  wakilmanager.sayHello('apriliani');
  wakilmanager.introDuction('maikel');
}
