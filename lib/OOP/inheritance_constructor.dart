/* Inheritance of constuctor
is a process of inheriting the consturctor of the parent class to the child class. it is a way of reusing the code of the the parent class.
 */

class Laptop {
  // Constuctor with named parameter
  Laptop({required String name, required String color}) {
    print("Laptop constructor");
    print("Name: $name");
    print("Color: $color");
  }
}

class MacBook extends Laptop {
  // Constructor
  MacBook({required String name, required color})
      : super(name: name, color: color) {
    print("MacBook constuctor");
  }
}

class Person {
  String name;
  int age;

  // Constructor
  Person(this.name, this.age);
}

class Student extends Person {
  int rollNumber;

  // Constructor
  Student(String name, int age, this.rollNumber) : super(name, age);
}

void main() {
  var macbook = MacBook(name: "MacBook Pro", color: "Silver");

  var student = Student("Bae", 23, 1);
  print("Student name: ${student.name}");
  print("Student age: ${student.age}");
  print("Student roll number: ${student.rollNumber}");
}
