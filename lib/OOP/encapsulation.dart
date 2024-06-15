import 'package:basic/OOP/class.dart';

void main() {
  Employee emp = new Employee();
  emp.setId(1);
  emp.setName("Bae");
  emp.display();
  // print(emp._name); // not work anymore because the class in separate files

  var vehicle = Vehicle();
  vehicle.model = "Honda Civic Type R";
  vehicle.year = 2020;
  print(vehicle.model);
  print(vehicle.year);
}
