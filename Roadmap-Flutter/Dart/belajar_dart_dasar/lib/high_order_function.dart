void sayHello(String name, String Function(String) filter) {
  var fillteredName = filter(name);

  print("Hi $fillteredName");
}

String fillterBadWord(String name) {
  if (name == 'bodoh') {
    return '*****';
  } else {
    return name;
  }
}

void main() {
  sayHello('syahril', fillterBadWord);
  sayHello('bodoh', fillterBadWord);
}
