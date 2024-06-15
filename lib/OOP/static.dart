/* A static variable is a variable that is shared by all instances of a class. it is declared using the static keyword. it is initial;ized only once when the class is loaded.it is used to store the class-level data 

Syntax
class ClassName {
  static dataType variableName;
}
*/

import 'dart:math';

class Employee {
  // static variable
  static int count = 0;

  // constructor
  Employee() {
    count++;
  }

  // method to display the value of count
  void totalEmployee() {
    print("Total Employee: $count");
  }
}

class Student {
  int id;
  String name;
  static String schoolName = "MIT";

  Student(this.id, this.name);

  void display() {
    print("Id: $id");
    print("Name: $name");
    print("School name: $schoolName");
  }
}

class PasswordGenerator {
  static String generateRandomPassword() {
    List<String> allAlphabets = 'abcdefghijklmnopqrstuvwxyz'.split('');
    List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
    List<String> specialCharacters = ["@", "#", "%", "&", "*"];
    List<String> password = [];

    for (int i = 0; i < 5; i++) {
      password.add(allAlphabets[Random().nextInt(allAlphabets.length)]);
      password.add(numbers[Random().nextInt(numbers.length)].toString());
      password
          .add(specialCharacters[Random().nextInt(specialCharacters.length)]);
    }

    return password.join();
  }
}

void main() {
  // create an object of employee class
  Employee e1 = Employee();
  e1.totalEmployee();
  Employee e2 = Employee();
  e2.totalEmployee();
  Employee e3 = Employee();
  e3.totalEmployee();

  Student student1 = Student(1, "Bae");
  student1.display();

  Student student2 = Student(2, "Haqi");
  student2.display();

  print(PasswordGenerator.generateRandomPassword());
}

/*
 Keypoints
 - static members are accessed using the class name
 - all instances of class share static members
 */