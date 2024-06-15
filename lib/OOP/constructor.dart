class Person {
  String name;
  int age;

// constructor is a special method used to initialized an object. it called automatically when object crteated.
// example a parameterized constructor with named parameter
  Person({required this.name, required this.age});

// example parameter in constructor
  // Person(this.name, this.age);

  void display() {
    print("Name: $name");
    print("Age: $age");
  }
}

class WithConstant {
  final int x;
  final int y;

  const WithConstant(this.x, this.y);
}

void main() {
  // with constructor
  Person person = Person(name: "John", age: 24);
  // Person person = Person("John", 24);
  person.display();

  // without constructor
  // Person person2 = Person();
  // person2.name = "Bae";
  // person2.age = 24;

  // example constants constructor
  WithConstant withConstant = WithConstant(1, 2);
  print("The withConstant code is: ${withConstant.hashCode}");
}
