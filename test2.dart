double initialX = 1.5;

// class Point {
//   // OK, can access declarations that do not depend on `this`:
//   double? x = initialX;

//   // ERROR, can't access `this` in non-`late` initializer:
//   double? y = this.x;

//   // OK, can access `this` in `late` initializer:
//   late double? z = this.x;

//   // OK, `this.fieldName` is a parameter declaration, not an expression:
//   Point(this.x, this.y);
// }

class ProfileMark {
  final String name;
  final DateTime start = DateTime.now();

  ProfileMark(this.name);
  ProfileMark.unnamed() : name = '';
}

class Person {
  final String _name;

  Person(this._name);

  String greet(String who) => 'Hello, $who. I am $_name.';
}

class Impostor implements Person {
  String get _name => '';

  String greet(String who) => 'Hi $who. Do you know who I am?';
}

String greetBob(Person person) => person.greet('Bob');

void main() {
  print(greetBob(Person('Kathy')));
  print(greetBob(Impostor()));
}