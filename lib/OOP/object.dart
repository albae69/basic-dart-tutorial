import 'package:basic/OOP/class.dart';

void main() {
  // creating an object of class

  Bicycle bicycle = Bicycle();
  bicycle.color = "Blue";
  bicycle.size = 30;
  bicycle.currentSpeed = 0;
  bicycle.changeGear(3);
  bicycle.display();

  Animals animal = Animals();
  animal.name = "Lion";
  animal.numOfLegs = 4;
  animal.lifeSpan = 10;
  animal.display();

  Car car = Car();
  car.name = "BMW";
  car.color = "Red";
  car.numberOfSeats = 2;
  car.start();

  Car car2 = Car();
  car2.name = "Audi";
  car2.color = "Black";
  car2.numberOfSeats = 4;
  car2.start();
}


/* 
Key Points
- the main method is the program's entry point, so it is always needed to see ther result.
- The new keyword can be used to create a new object, but it is unnecesassry.
*/