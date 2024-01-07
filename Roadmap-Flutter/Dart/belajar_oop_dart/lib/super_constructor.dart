class Manager {
  String? name;

  Manager(this.name);
}

class VicePresident extends Manager {
  VicePresident(String name) : super(name);
}

void main() {
  var manager = Manager('syahril');
  print(manager.name);

  var viceManager = VicePresident('aril');
  print(viceManager.name);
}
