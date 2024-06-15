/* late keyword - is used to declare a variable or field that will be initialized at later time. it is used to declare a non-nullable variable that is not initialized at the time of declaration */

late String name;

class Person {
  // late variable
  late String name;

  void greet() {
    print("Hello $name");
  }
}

void main() {
  // assigin value to late variable;
  name = "Bae";
  print(name);

  Person person = Person();
  // late variable is initialized here
  person.name = "Bae";
  person.greet();
}
