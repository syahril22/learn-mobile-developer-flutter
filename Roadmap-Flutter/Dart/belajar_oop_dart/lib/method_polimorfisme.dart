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
  print('Hello ${employe.name}');
}

void main() {
  // one
  Employe employe = Employe('Syahril');
  print(employe);

  employe = Manager('syahril');
  print(employe);

  employe = VirePresident('Syahril');
  print(employe);

  sayHello(Employe('sayhril'));
  sayHello(Manager('sayhril'));
  sayHello(VirePresident('sayhril'));
}
