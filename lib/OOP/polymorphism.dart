/* Polymorphism */
/* 
poly means many and morph means forms. polymorphism is the ability of an object to take on many forms
Note: in the real world, polymorphism is updating or modifying the feature, function, or implementation that already exists in the parent class.

Polymorphism by method overriding
Syntax
class ParentClass {
void functionName(){
  }
}

class ChildrenClass extends ParentClass {
@override
void functionName(){
  }
}
*/

class Animal {
  void eat() {
    print("Animal is eating");
  }
}

class Dog extends Animal {
  @override
  void eat() {
    print("Dog is eating");
  }
}

class Employee {
  void salary() {
    print("Employee salary is \$1000.");
  }
}

class Manager extends Employee {
  @override
  void salary() {
    print("Manager salary is \$2000.");
  }
}

class Developer extends Employee {
  @override
  void salary() {
    print("Developer salary is \$3000.");
  }
}

void main() {
  Animal animal = Animal();
  Dog dog = Dog();
  Manager manager = Manager();
  Developer developer = Developer();

  animal.eat();
  dog.eat();
  manager.salary();
  developer.salary();
}
