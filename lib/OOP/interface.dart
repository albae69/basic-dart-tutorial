/* 
Interface - an interface defines a syntax that a class must follow. it is a contract that defines that capabilities of a class. it is used to achieve abstraction in the dart programming language. when you implement an interface, you must implement all the properties and methods defined in the interface. keyword implements is used to implement an interface

Syntax
class InterfaceName {
  // code
}

class ClassName implements Interfacename {
  // code
}
 */

// creating an interface using abstract class
abstract class Person {
  walk();
  run();
}

abstract class Sport {
  basketBall();
}

class Student implements Person {
  @override
  run() {
    print("student is running");
  }

  @override
  walk() {
    print("student is walking");
  }
}

// implement multiple interface
class StudentWhoDoSport implements Person, Sport {
  @override
  basketBall() {
    print("student playing basket ball");
  }

  @override
  run() {
    print("student run");
  }

  @override
  walk() {
    print("student walk");
  }
}

void main() {
  Student student = Student();
  student.walk();
  student.run();

  StudentWhoDoSport studentWhoDoSport = StudentWhoDoSport();
  studentWhoDoSport.basketBall();
}
