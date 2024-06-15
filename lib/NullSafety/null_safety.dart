/* null safety is a feature in the dart that help developers to avoid null errors. dart is non-nullable by default, which means that they cannot have a value null unless you explicitly allow it
*/

/* How to use nullable variable */
/* 
- you can use if statement to check wheter the variable is null or not
- you can use ! operator, which returns null if the variable is null
- you can use ?? operator to assign a default value if the variable is null
 */

void main() {
  // int age = null; // give error
  int productId = 20;
  // int productId = null; // give error
  // to declare a null value using ?
  String? name; // declaring a nullable value
  name = "Bae"; // assignin bae to name
  name = null; // no error because the variable is nullable
  if (name == null) {
    print("name is null");
  }

// using ?? to assign a default value
  String name1 = name ?? "stranger";
  print(name1);

  // using ! operator to return null if name is null
  // String name2 = name!;
  // print(name2);

  // define a list of nullable items
  List<int?> items = [1, 2, 3, null];
  print(items);

  // null safety in dart functions
  // void printAddress(String address) {
  // print(address);
  // }

  // printAddress(null) // give error
  // define function with nullable paramter
  void printAddress(String? address) {
    print(address);
  }

  printAddress(null); // works

  // Person person = Person(null); // give error
  Person person = Person(null); // works
}

// null safety in dart class
class Person {
  String? name;
  Person(this.name);
}
// class Person {
//   String name;
//   Person(this.name);
// }
