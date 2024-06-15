/* 
Inheritance is a sharing of behaviour between two clasess. it allows you to define class that extends the functionality of another class.the extends keyword is used for inheriting from parent class

Syntax
class ParentClass {
  // Parent class code
}

class ChildrenClass extends ParentClass {
  // Child class code
}
 */

class Person {
  // Properties
  String? name;
  int? age;

  // Method
  void display() {
    print("Name: $name");
    print("Age: $age");
  }
}

// here in student class, we are extending the properties and methods of the person class
class Student extends Person {
  // Fields
  String? schoolName;
  String? schoolAddress;

  // Method
  void displaySchoolInfo() {
    print("School Name: $schoolName");
    print("School Address: $schoolAddress");
  }
}

/* Types of Inheritance */
/* 
  1. single inheritance - in this type, a class can inherit from one class
  2. multilevel inheritance - in this type, a class can inherit from another    calss and that class can also inherit from another class
  3. hierarcichal inheritance - in this type, parent class is inherited by multiple subclasses, example the Car class can be inherited by the Toyota class and Honda class
  4. multiple inheritance - in this type, a class can inherit from multiple class, dart do not support this type.
 */

class Car {
  // Properties
  String? name;
  double? price;
}

class Tesla extends Car {
  // Methods to display the values of the properties
  void display() {
    print("Name: $name");
    print("Price: $price");
  }
}

void main() {
  // creating an object of the student class
  var student = Student();
  student.name = "Bae";
  student.age = 23;
  student.schoolName = "MIT";
  student.schoolAddress = "USA";
  student.display();
  student.displaySchoolInfo();

  Tesla t = Tesla();
  t.name = "Tesla Model 3";
  t.price = 500000.0;
  t.display();
}
