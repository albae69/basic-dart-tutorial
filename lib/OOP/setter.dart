/* 
Setter is used to set the value of a property. it is mostly used to update a prive property's value. Setter provide explicit write access to an object properties.

Syntax
set property_name (value) {
  // Setter body
}
 */

class Cat {
  // Private properties
  String? _name;
  int? _age;

  // Setter to update a private property _name
  set name(String name) => this._name = name;

  // Setter to update a private property _age
  set age(int age) {
    if (age < 0) {
      throw Exception("Cat age cannot be less than 0");
    }
    this._age = age;
  }

  // Method to dispalay the values of the properties

  void display() {
    print("Name: $_name");
    print("Age: $_age");
  }
}

void main() {
  // create an object of Cat class
  Cat cat = Cat();
  cat.name = "Bull";
  cat.age = 2;
  cat.display();

  Cat cat2 = Cat();
  cat.name = 'vanilla';
  cat.age = -1;
  cat.display();
}
