// metadata adalah informasi tambahan
// anotation
// ada @overide sama @deprecated

class Sample {
  // mengoveride method toString yg ada pada class parent
  @override
  String toString() {
    return "Sample";
  }

  @Deprecated('Do not use this anymore')
  void doNotUserThis() {}
}

// membuat anotation sendiri
class Todo {
  final String todo;

  const Todo(this.todo);
}

@Todo("Will be implemented next release")
class Application {
  @Todo("Will be implemented next release")
  String? name;

  @Todo("Will be implemented next release")
  void featureA() {}
}
