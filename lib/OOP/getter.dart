/*
getter is used to get the value of the property. it is mostly used to access a private property's value. getter provide explicit read access to an object properties.

Syntax

return_type get property_name {
  // getter body
}

 */

class Person {
  // Properties
  String? firstName;
  String? lastName;

  // Constructor
  Person(this.firstName, this.lastName);

  // Getter
  String get fullName => "$firstName $lastName";
}

class NoteBook {
  // Private properties
  String? _name;
  double? _price;

  // Constructor
  NoteBook(this._name, this._price);

  // Getter method to access private property _name
  String get name {
    // added a validation
    if (_name == "") {
      return "No Name";
    }
    return this._name!;
  }

  // Getter method to access private property _price
  double get price => this._price!;
}

void main() {
  // create an object of Person class
  Person p = Person("Bae", "Lbs");
  print(p.fullName);

  // create an object of NoteBook class
  NoteBook nb = NoteBook("Learn Dart", 100);
  print(nb.price);

  NoteBook nb2 = NoteBook("", 100);
  print(nb2.name);
}
