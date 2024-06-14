void main() {
  // Numbers
  int num1 = 100; // without decimal point.
  double num2 = 130.2; // with decimal point.
  num num3 = 50;
  num num4 = 50.4;

  // for sum
  num sum = num1 + num2 + num3 + num4;

  // print info
  print("Num 1 is $num1");
  print("Num 2 is $num2");
  print("Num 3 is $num3");
  print("Num 4 is $num4");
  print("Sum is $sum");

  // round double value to 2 decimal place
  double price = 1130.22323232;
  print(price.toStringAsFixed(2));

  // Strings
  String schoolName = "Diamond School";
  String address = "New York 2140";

  print("School name is $schoolName and address is $address");

  // Multi Line String
  String multiLineText = '''
This is multi line text
with 3 single quote
I am also writting here.
''';

  String otherMultiLineText = """
This is multi line text
with 3 double quote
I am also writing here.
""";

  print("Multiline text is $multiLineText");
  print("Other multiline text is $otherMultiLineText");

// Special character in String
  print('I am from \nUS.'); // new line
  print('I am from \tUS.'); // new tab

  // Raw String
  num price1 = 10;
  String withoutRawString = 'The value of price is \t $price1';
  String withRawString = r"The value of price is \t $price";

  print("Without Raw: $withoutRawString");
  print("With Raw: $withRawString");

  // Type Conversion
  // Type Conversion String to Int
  String strValue = '1';
  print("Type of strvalue is ${strValue.runtimeType}");
  int intValue = int.parse(strValue);
  print("Value of intvalue is $intValue");
  print("Type of intvalue is ${intValue.runtimeType}");

  // Type Conversion String to Double
  String strValue1 = "1.1";
  print("Type of strvalue1 is ${strValue1.runtimeType}");
  double doubleValue = double.parse(strValue1);
  print("Value of doubleValue is $doubleValue");
  print("Type of doublevalue is ${doubleValue.runtimeType}");

  // Type Conversion Int to String
  int one = 1;
  print("Type of one is ${one.runtimeType}");
  String oneInString = one.toString();
  print("Value of oneInString is $oneInString");
  print("Type of oneInString is ${oneInString.runtimeType}");

  // Type Conversion Int to Double
  double num5 = 10.1;
  int num6 = num5.toInt();
  print("The value of num5 is $num5. Its type is ${num5.runtimeType}");
  print("The value of num6 is $num6. Its type is ${num6.runtimeType}");

  // Booleans
  bool isHasCat = false;
  print("Are you have a cat? $isHasCat");

  // Lists
  List<String> names = ["bae", 'lbs', 'ahmad'];
  print("values of names is $names");
  print("values of names[0] is ${names[0]}");
  print("values of names[1] is ${names[1]}");
  print("values of names[2] is ${names[2]}");

  // find length of list
  int nameLength = names.length;
  print("the length of names if $nameLength");

  // Sets - an unordered collection of unique items
  Set<String> weekday = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
  print(weekday);

  // Maps - is an object where you can store daya in key-value pairs.
  Map<String, String> details = {'name': "Bae", "address": "ID"};
  print(details['name']);

  // Var - automatically find a data type
  var person = "John";
  var age = 20;
  print(person);
  print(age);

  // Runes - you can find unicode value of string
  String value = "a";
  print(value.runes);
}
