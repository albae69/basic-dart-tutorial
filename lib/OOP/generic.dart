/* Generics - is a way to create a class, or function that can work with different types of data (objects). ex: internal implementation of List class, it is generic class. it can work with different types like int, String, double, etc.
example:
- List<int> is a list of integers
- List<String> is a list of strings

Syntax
class ClassName<T> {
  // code
}
 */

// Without Generics
// create a class for int
class IntData {
  int data;
  IntData(this.data);
}

// create a class for double
class DoubleData {
  double data;
  DoubleData(this.data);
}

// using generics
class Data<T> {
  T data;
  Data(this.data);
}

/* 
Generics Type Variable
- T = Type
- E = Element
- K = Key
- V = value
 */

// Generic Methods
T genericMethod<T>(T value) {
  return value;
}

// Generic method with multiple parameter
T genericMethod1<T, U>(T value1, U value2) {
  return value1;
}

// Generic class with restriction
class DataWithRestric<T extends num> {
  T data;
  DataWithRestric(this.data);
}

// Generics class with abstract class
// abstract lass Shape
abstract class Shape {
  // abstract method area
  double get area;
}

// class Circle which implements Shape
class Circle implements Shape {
  // field radius
  final double radius;

  // constructor
  Circle(this.radius);

  // implement of area method
  @override
  double get area => 3.14 * radius * radius;
}

// class Rectangle which implements Shape
class Rectangle implements Shape {
  // fields width and height;
  final double width;
  final double height;

  // constructor
  Rectangle(this.width, this.height);

  // implements of area mthod
  @override
  double get area => width * height;
}

// Generic class Region
class Region<T extends Shape> {
  // fields shapes
  List<T> shapes;

  // constructor
  Region({required this.shapes});

  // method totalArea
  double get totalArea {
    double total = 0;
    shapes.forEach((shape) {
      total += shape.area;
    });
    return total;
  }
}

void main() {
  // create an object of IntData class
  // IntData intData = IntData(10);

  // create an object of doubleData class
  // DoubleData doubleData = DoubleData(10.8);

  Data<int> intData = Data(10);
  Data<double> doubleData = Data(10.8);

  print("IntData: ${intData.data}");
  print("DoubleData: ${doubleData.data}");

  print("Int: ${genericMethod<int>(10)}");
  print("Double: ${genericMethod<double>(10.8)}");
  print("String: ${genericMethod<String>("Hello World!")}");

  // generic method with multiple value
  print(genericMethod1<int, String>(10, "hello wordl!!"));
  print(genericMethod1<String, double>("Double", 50.0));

  // create an object of type int and double
  DataWithRestric<int> intDataRestrict = DataWithRestric(10);
  DataWithRestric<double> doubleDataRestrict = DataWithRestric(10.10);
  print("IntDataRestrict: ${intDataRestrict.data}");
  print("doubleDataRestrict: ${doubleDataRestrict.data}");
  // not possible
  // DataWithRestric<String> stringDataRestrict = DataWithRestric("Hello");

  // create object of Circle and Rectangle
  var circle = Circle(10);
  var rectangle = Rectangle(10, 20);

  // create a list of shape objects
  var region = Region(shapes: [circle, rectangle]);
  print("Total Area of Region: ${region.totalArea}");
}
