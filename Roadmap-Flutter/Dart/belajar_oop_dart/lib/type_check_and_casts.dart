class Employe {
  String? name;

  Employe(this.name);
}

class Manager extends Employe {
  Manager(String name) : super(name);
}

class VirePresident extends Manager {
  VirePresident(String name) : super(name);
}

void sayHello(Employe employe) {
  if (employe is VirePresident) {
    // bisa gini
    // VirePresident virePresident = employe as VirePresident;
    // bisa gini
    VirePresident virePresident = employe;
    print("Hallo Vire President ${virePresident.name}");
  } else if (employe is Manager) {
    // bisa gini
    // Manager manager = employe as Manager;
    Manager manager = employe;
    print("Hallo Manager ${manager.name}");
  } else {
    print('Hello ${employe.name}');
  }
}

void main() {
  sayHello(VirePresident('sayhril'));
  sayHello(Manager('sayhril'));
  sayHello(Employe('sayhril'));
}
