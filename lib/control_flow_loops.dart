void main() {
// for loop
  for (int i = 0; i < 10; i++) {
    print("index $i");
  }

  for (int i = 10; i >= 1; i--) {
    print("index reverse $i");
  }

  // forearch loop
  List<String> names = ["bae", "haqi", "lubis"];
  names.forEach((name) => print("name is $name"));

  List<int> numbers = [1, 2, 3, 4, 5];
  int total = 0;
  numbers.forEach((num) => total = total + num);
  print("total is $total");

  double average = total / numbers.length;
  print("the average is $average");

  for (String name in names) {
    print("names $name");
  }

  // while loop
  int i = 1;
  while (i < 10) {
    print(i);
    i++;
  }

  int j = 10;
  while (j >= 1) {
    print(j);
    j--;
  }

  int sum = 0;
  int n = 100;
  int z = 1;

  while (z <= n) {
    sum = sum + z;
    z++;
  }

  print('sum is $sum');

  // do while loop
  int k = 0;
  do {
    print(k);
    k++;
  } while (k < 10);

  // break and continue - someties need inside loop or switch statement
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      break;
    }
    continue;
  }

  // execption handling
  try {
    int a = 18;
    double b = 0;
    int res;
    res = a ~/ b;
    print('result is $res');
  } catch (e) {
    print(e);
  } finally {
    print("finally block executed");
  }

  try {
    checkAge(-20);
  } catch (e) {
    print(e.toString());
  }
}

void checkAge(int age) {
  if (age < 0) {
    throw MyExeption().errorMsg();
  }
}

class MyExeption implements Exception {
  String errorMsg() {
    return "age cant be negative value";
  }
}
