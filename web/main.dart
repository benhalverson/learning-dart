import 'dart:html';

void main() {
  Element output = querySelector('#output');
  output.children.addAll(thingsToDo().map(newLI));
}

LIElement newLI(String itemText) => LIElement()..text = itemText;

Iterable<String> thingsToDo() sync* {
  var actions = ['Walk', 'Swim', 'Run'];
  var pets = ['cats', 'dogs', 'birds'];

  for (var action in actions) {
    for (var pet in pets) {
      if (pet == 'cats' && action != 'Feed') continue;
      yield '$action the $pet';
    }
  }
}

void addToDoItem(String item) {
  print(item);
}
