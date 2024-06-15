/* Mixin - are a way of reusing the code in multiple classes. mixins are declared using the keyword mixin followed by the mixin name. Three keywords are used while working with mixins: mixin, with and on. it is possible to use multiple mixins in a class

Syntax
mixin Mixin1 {
  // code
}

mixin Mixin2 {
  // code
}

class ClassName with Mixin1,Mixin2 {
  // code
}
 */

mixin ElectricVariant {
  void electricVariant() {
    print("this is an electric variant");
  }
}

mixin PetrolVariant {
  void petrolVariant() {
    print("this is a petrol variant");
  }
}

// with used to apply the mixin to the class
class Car with ElectricVariant, PetrolVariant {
  // here we have access of electricVariant() and petrolVariant() methods
}

mixin CanFly {
  void fly() {
    print("i can fly");
  }
}

mixin CanWalk {
  void walk() {
    print("i can walk");
  }
}

class Bird with CanFly, CanWalk {}

class Human with CanWalk {}

abstract class Animal {
  // properties
  String name;
  double speed;

  // constructor
  Animal(this.name, this.speed);

  //abstract method
  void run();
}

// mixin CanRun is only used by class that extends Animal
mixin CanRun on Animal {
  @override
  void run() => print("$name is running at speed $speed");
}

class Dog extends Animal with CanRun {
  // constructor
  Dog(String name, double speed) : super(name, speed);
}

void main() {
  var car = Car();
  car.electricVariant();
  car.petrolVariant();

  var bird = Bird();
  bird.fly();
  bird.walk();

  var human = Human();
  human.walk();

  var dog = Dog("Blacky", 30);
  dog.run();
}
