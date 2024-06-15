/* Factory  Constructor  - give more flexibility to create an object, can return constructor an instance of the class or even the subclasses. it is used to return the cached instance of the class

Syntax
class ClassName {
  factory Classname() {
      // TODO: return ClassName instance
  }

  factory ClassName.namedConstructor() {
    // TODO: return ClassName instance
  }
}
 */

// without factory constuctor
// class Area {
//   final int length;
//   final int breadth;
//   final int area;

//   // initializer list
//   const Area(this.length, this.breadth) : area = length * breadth;
// }

// with factory constructor

class Area {
  final int length;
  final int breadth;
  final int area;

  // private constructor
  const Area._internal(this.length, this.breadth) : area = length * breadth;

  // factory constructor
  factory Area(int length, int breadth) {
    if (length < 0 || breadth < -0) {
      throw Exception("length and breadth must be positive");
    }

    return Area._internal(length, breadth);
  }
}

// factory constuctor create a person object from a Map
class Person {
  String firstName;
  String lastName;

  // constructor
  Person(this.firstName, this.lastName);

  // factory constructor Person.fromMap;
  factory Person.fromMap(Map<String, Object> map) {
    final firstName = map['firstName'] as String;
    final lastName = map['lastName'] as String;

    return Person(firstName, lastName);
  }
}

// factory constructor using enum to create shape object with interface

// enum ShapeType
enum ShapeType { circle, rectangle }

// abstract class Shape
abstract class Shape {
  // factory constructor
  factory Shape(ShapeType type) {
    switch (type) {
      case ShapeType.circle:
        return Circle();
      case ShapeType.rectangle:
        return Rectangle();

      default:
        throw 'Invalid shape type';
    }
  }

  // method
  void draw() {}
}

class Circle implements Shape {
  @override
  void draw() {
    print("drawing a circle");
  }
}

class Rectangle implements Shape {
  @override
  void draw() {
    print("drawing a rectangle");
  }
}

void main() {
  Area area = Area(10, 20);
  print("Area is: ${area.area}");

  // notice that here is a negative value
  Area area2 = Area(5, 20);
  print("Area is: ${area2.area}");

  // create a person object
  final person = Person("John", "Doe");
  final person2 = Person.fromMap({'firstName': "Bae", "lastName": "Lubis"});

  print("From normal constructor: ${person.firstName} ${person.lastName}");
  print("From factory constructor: ${person2.firstName} ${person2.lastName}");

  // create shape object
  Shape shape = Shape(ShapeType.circle);
  Shape shape2 = Shape(ShapeType.rectangle);
  shape.draw();
  shape2.draw();
}
