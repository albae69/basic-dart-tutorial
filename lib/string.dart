void main() {
  // string concatenation
  String firstName = "Bae";
  String lastName = "Lbs";
  print("Using +, Fullname is " + firstName + " " + lastName + ".");
  print("Using interpolation, fullname is $firstName $lastName.");

  // properties of string
  String hi = "Hi";
  print(hi.codeUnits);
  print(hi.isEmpty);
  print(hi.isNotEmpty);
  print("The length of the string is: ${hi.length}");

  // methods of string
  // uppercase & lowercase
  String address1 = "Medan";
  String address2 = "Medan MaReLan";

  print("Address 1 in uppercase: ${address1.toUpperCase()}");
  print("Address 1 in lowercase: ${address1.toLowerCase()}");
  print("Address 2 in uppercase: ${address2.toUpperCase()}");
  print("Address 2 in lowercase: ${address2.toLowerCase()}");

  // trim
  String address3 = " Indonesia ";
  print("Result of address3 trim is ${address3.trim()}");

  // compare - compare two string, it will give 0 when text are equal,1 when the first string is greater than the second, and -1 when the first string is smaller than the second
  String item1 = "Apple";
  String item2 = "Ant";
  String item3 = "Basket";

  print("Comparing item 1 with item 2: ${item1.compareTo(item2)}");
  print("Comparing item 1 with item 3: ${item1.compareTo(item3)}");
  print("Comparing item 3 with item 2: ${item3.compareTo(item2)}");

  // replace string
  String text =
      "I am a good boy I Like milk. Doctor says milk is good for health";
  String replacedText = text.replaceAll("milk", "water");
  print("Original text $text");
  print("Replaced text $replacedText");

  // split string
  String allNames = "Bae,Lbs,Haqi";
  List<String> listNames = allNames.split(",");
  print("Value of list names is $listNames");

  print("List name at 0 index ${listNames[0]}");
  print("List name at 1 index ${listNames[1]}");

  // to string
  int numb = 20;
  String numbRes = numb.toString();
  print("Type of number is ${numb.runtimeType}");
  print("Type of result is ${numbRes.runtimeType}");

  // substring
  String txt = "I Love Computer";
  print("Print only computer: ${txt.substring(7)}");
  print("Print only love: ${txt.substring(2, 6)}");

  // reverse a string
  String input = "Hello";
  print("$input reverse is ${input.split("").reversed.join()}");

  // capitalize first letter of string
  String text1 = "hello world!";
  print(
      "Capitalized first letter of string: ${text1[0].toUpperCase()}${text1.substring(1)}");
}
