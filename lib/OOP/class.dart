// creating a class in dart
class Animals {
  String? name;
  int? numOfLegs;
  int? lifeSpan;

  void display() {
    print("Animal name: $name");
    print("Number of Legs: $numOfLegs");
    print("Life Span: $lifeSpan");
  }
}

class Person {
  String? name;
  String? phone;
  bool? isMarried;
  int? age;

  void displayInfo() {
    print("Person name: $name");
    print("Phone number: $phone");
    print("Married: $isMarried");
    print("Age: $age");
  }
}

class Area {
  double? length;
  double? breadth;

  double calculateArea() {
    return length! * breadth!;
  }
}

class Student {
  String? name;
  int? age;
  int? grade;

  void displayInfo() {
    print("Student name: $name");
    print("Student age: $age");
    print("Student grade: $grade");
  }
}

class Bicycle {
  String? color;
  int? size;
  int? currentSpeed;

  void changeGear(int newValue) {
    currentSpeed = newValue;
  }

  void display() {
    print("Color: $color");
    print("Size: $size");
    print("Current Speed: $currentSpeed");
  }
}

class Car {
  String? name;
  String? color;
  int? numberOfSeats;

  void start() {
    print("$name car started");
  }
}

class Employee {
  // private properties
  int? _id;
  String? _name;

  // getter method to access private property _id
  int getId() {
    return _id!;
  }

  // getter method to access private property _name
  String getName() {
    return _name!;
  }

  // setter method to update private property _id
  void setId(int id) {
    this._id = id;
  }

// setter method to update private property _name
  void setName(String name) {
    this._name = name;
  }

  void display() {
    print("Id: $_id");
    print("Name: $_name");
  }
}

class Vehicle {
  late String _model;
  late int _year;

  // Getter method
  String get model => _model;

  // Setter method
  set model(String model) => _model = model;

  // Getter method
  int get year => _year;

  // Setter method
  set year(int year) => _year = year;
}

/* 
Key Points
- The class is declared using the class keyword.
- The class is blueprint for creating objects.
- The class body consists of properties and methods.
- The properties are also known as fields, attributes or data members.
- The methods are also known as behaviours, or member functions.
*/