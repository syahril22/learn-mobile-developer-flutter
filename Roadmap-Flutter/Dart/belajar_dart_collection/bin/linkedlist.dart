import 'dart:collection';

final class StringEntry extends LinkedListEntry<StringEntry> {
  String value;

  StringEntry(this.value);
}

void main() {
  final linkedList = LinkedList<StringEntry>();

  linkedList.add(StringEntry("syahril"));
  linkedList.add(StringEntry("sobirin"));

  for (var entry in linkedList) {
    print(entry.value);
  }
}
