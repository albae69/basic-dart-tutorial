void main() {
  String firstName = "Ahmad";
  String lastName = "Albaihaqi";
  int age = 23;
  bool isMarried = false;
  double height = 171.9;

  String message =
      "Hello my name is $firstName $lastName, i am $age years old, and i am ${isMarried ? "already married" : "not married yet."}";

  print(message);
}
