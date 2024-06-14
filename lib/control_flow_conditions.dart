void main() {
  // If condition
  var age = 20;

  if (age >= 18) {
    print("you can vote!");
  }

  // If-Else condition
  age = 12;

  if (age >= 18) {
    print("You can vote!");
  } else {
    print("You cannot vote!");
  }

  // condition based on boolean value
  bool isMarried = false;
  if (isMarried) {
    print("You are married!");
  } else {
    print("You are still single!o");
  }

  // if else if condition
  int numberOfKids = 3;

  if (numberOfKids == 0) {
    print("You don't have a kid yet!");
  } else if (numberOfKids == 1) {
    print("You have a kid ");
  } else {
    print("Too many kids!");
  }

  // switch case
  int numOfDay = 5;
  switch (numOfDay) {
    case 0:
      print("Sunday");
    case 1:
      print("Monday");
    case 2:
      print("Tuesday");
    case 3:
      print("Wednesday");
    case 4:
      print("Thursday");
    case 5:
      print("Friday");
    case 6:
      print("Saturday");
    default:
      print("invalid day");
      break;
  }

  const weather = "rainy";
  switch (weather) {
    case "sunny":
      print("it's a sunny day");
      break;
    case "snowy":
      print("it's a snowy day");
      break;
    case "cloudy":
      print("it's a cloudy day");
      break;
    case "rainy":
      print("it's a rainy day");
      break;
    default:
      print("invalid weather");
      break;
  }

  // switch case with enum
  const color = COLOR.BLUE;
  switch (color) {
    case COLOR.BLUE:
      print("Its a blue");
      break;
    case COLOR.GREEN:
      print("Its a green");
      break;
    case COLOR.RED:
      print("Its a red");
      break;
    default:
      print("color not found!");
      break;
  }

// Ternary Operator
  int num1 = 10;
  int num2 = 15;
  int max = 0;

  // regular if else
  if (num1 > num2) {
    max = num1;
  } else {
    max = num2;
  }

  // using ternary
  max = num1 > num2 ? max = num1 : max = num2;

  print("the greatest number is $max");
}

enum COLOR {
  RED,
  GREEN,
  BLUE,
}
