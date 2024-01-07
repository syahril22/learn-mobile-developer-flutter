// method overriding
// merupakan mendeklarasikan ulang method yg ada pada class parent di class child

class Manager {
  String? name;

  void sayHello(String name) {
    print('Hello $name, my name is Manager ${this.name}');
  }
}

class WakilManager extends Manager {
  @override
  void sayHello(String name) {
    print('Hello $name, my name is Wakil Manager ${this.name}');
  }
}

void main() {
  var manager = Manager();
  print(manager.name = 'syahril');
  manager.sayHello('aril');

  var wakilmanager = WakilManager();
  print(wakilmanager.name = 'lusy');
  wakilmanager.sayHello('apriliani');
}
