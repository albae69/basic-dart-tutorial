// functions are the block of code that perform a spesific task.
String printName(String name) {
  return name;
}

// has 2 parameter with type int
int add(int a, int b) {
  return a + b;
}

// with positioned parameter
void printInfo(String name, String gender) {
  print("Hello $name your gender is $gender");
}

// with default value on positional parameter and opsional parameter (wrapped with [])
void printInfo1(String name, String gender, [String title = "sir/ma'am"]) {
  print("Hello $title $name your gender is $gender");
}

// with named parameter
void printWithNamedParameter({String? name, String? gender}) {
  print("Hello $name your gender is $gender");
}

// with named parameter and required parameter
void printWithRequiredParameter(
    {required String name, required String gender}) {
  print("Hello $name your gender is $gender");
}

// anonymous function - a function that not require a name and return type
var cube = (int number) {
  return number * number * number;
};

// an arrow function is a function without function body
void greet(String name) => print(name);

void main() {
  print(printName("Bae"));
  print(add(10, 10));

  // passing values in wrong order
  printInfo("male", "bae");

  // passing values in correct order
  printInfo("bae", "male");

// has default value on parameter
  printInfo1("Bae", "Male");

  // named paramater with optional parameter
  printWithNamedParameter(name: "Bae", gender: "Male");
  printWithNamedParameter(gender: "Male", name: "Lbs");
  printWithNamedParameter();

  // with required parameter
  printWithRequiredParameter(name: "Bae", gender: 'Male');

  print("the cube of 2 is ${cube(2)}");
  print("the cube of 3 is ${cube(3)}");

  greet("Bae");
}
