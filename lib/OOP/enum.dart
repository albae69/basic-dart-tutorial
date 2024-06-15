/* 
Enum - an enum is a special type that represents a fixed number of constant values. an enum is declared using the keyword enum followed by the enum's name.

Syntax
enum enumName {
  constantName1,
  constantName2,
  constantName3,
  ...,
  contantNameN
}
 */

enum Gender { Male, Female }

class Person {
  // Properties
  String? firstName;
  String? lastName;
  Gender? gender;

  // Constructor
  Person(this.firstName, this.lastName, this.gender);

  // Method
  void display() {
    print("First Name: $firstName");
    print("Last Name: $lastName");
    print("Gender: $gender");
  }
}

void main() {
  Person p1 = Person("John", "Doe", Gender.Male);
  p1.display();

  Person p2 = Person("Mary", "Z", Gender.Female);
  p2.display();

  // print all enum values
  for (Gender g in Gender.values) {
    print(g);
  }
}
