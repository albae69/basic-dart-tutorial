/*
 Abstract class - are classes that cannot be initialized. it is used to define the behaviour of a class that can be inherited by other classes. An abstract class is declared using the keyword abstract 

Syntax
abstract class ClassName {
  // Body of abstract class

  method1();
  method2();
}
*/

abstract class Vehicle {
  // abstract method
  void start();
  void stop();
}

class Car extends Vehicle {
  // implement of start() and stop()
  @override
  void start() {
    print("Car started");
  }

  @override
  void stop() {
    print("Car stopped");
  }
}

class Bike extends Vehicle {
  // implement of start() and stop()
  @override
  void start() {
    print("Bike started");
  }

  @override
  void stop() {
    print("Bike stop");
  }
}

abstract class Shape {
  int dim1, dim2;

  // Constructor
  Shape(this.dim1, this.dim2);

  // abstract method
  void calculateArea();
}

class Rectangle extends Shape {
  // Constructor
  Rectangle(int dim1, int dim2) : super(dim1, dim2);

// Implementation of calculateArea()
  @override
  void calculateArea() {
    print("The area of the rectangle is ${dim1 * dim2}");
  }
}

void main() {
  Car car = Car();
  car.start();
  car.stop();

  Bike bike = Bike();
  bike.start();
  bike.stop();

  Rectangle rectangle = Rectangle(10, 20);
  rectangle.calculateArea();
}

/* 
Key points
- you can't create an object of an abstract class
- it can have both abstract and non-abstract methods
- it is used to define the behaviour of a class that other classes can inherit
- abstract method only has a signature and no implementation
 */