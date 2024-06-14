void main() {
  // List
  List<int> numbers = [1, 2, 3, 4, 5];

  List<String> names = ['Bae', 'Haqi', 'Lubis'];

  var mixed = [10, "John", 18.8];

  print(numbers);
  print(names);
  print(mixed);

  // fixed length list
  var list = List<int>.filled(5, 0);
  print(list);

  // growable list - a list defined without a spesified length
  var list1 = [1, 2, 3, 4, 5, 6, 7];
  print(list1);

  // access item of list
  print(list1[0]);
  print(list1[1]);

  // get index of value
  print(list1.indexOf(5));

  // find the length of the list
  print(list1.length);

  // changing the value of list
  list1[1] = 15;
  print(list1);

  // mutable list - can change after declaration
  list1[1] = 2;
  list1[2] = 10;

  // immutable list - cannot change after declaration
  const List<int> immutableList = [1, 2, 3];
  // immutableList[1] = 10;  //will error
  print(immutableList);

  // list properties
  print(list1.first); // return first element in the list
  print(list1.last); // return last element in the list
  print(list1.isEmpty); // return true if list empty
  print(list1.isNotEmpty); // return true if list is not empty
  print(list1.length); // return length of the list
  print(list1.reversed); // return reversed of the list
  // print(list1
  //     .single); // it is used to check if the list has only one element and return it.

  // list methods add
  List<int> nums = [];
  nums.add(1); // add one element at a time and return the modified list
  nums.addAll([1, 2, 3, 4]); // insert multiple values to the list
  nums.insert(0, 0); // insert a element at spesified index
  nums.insertAll(0, [0, 0, 0]);
  print(nums);

  // list methods remove
  nums.remove(1); // remove one element at a time from the given list
  nums.removeAt(2); // remove an element at spesified index
  nums.removeLast(); // remove last element from the given list
  nums.removeRange(0, 3); // remove the item within spesified range
  print(nums);

  // loop in list
  for (int num in nums) {
    print(num);
  }

  // multiply the list value
  nums.map((num) => print(num * 2));

  // combine two or more list using spread syntax
  List<int> first = [1, 2, 3];
  List<int> second = [4, 5, 6];
  List<int> combinedList = [...first, ...second];
  print(combinedList);

  // Set - unique collections of items - unordered
  Set<String> fruits = {"Apple", "Orange", "Mango"};
  print(fruits);

  // set properties
  print("First value is ${fruits.first}"); // get first value of set
  print("Last value is ${fruits.last}"); // get last value of set
  print("Is fruits is empty? ${fruits.isEmpty}"); // return true or false
  print("Is fruits is not empty? ${fruits.isNotEmpty}"); // return true or false
  print(
      "the length of fruits is ${fruits.length}"); // return the length of the set

  // check available value
  print(fruits.contains("Bananas"));
  print(fruits.contains("Mango"));

  // add & remove items in Set
  fruits.add("Lemon");
  fruits.remove("Mango");
  print(fruits);

  // add multiple
  fruits.addAll({"Pineapple", "Strawberry", "Banana"});
  print(fruits);

// loop through set
  for (String fruit in fruits) {
    print(fruit);
  }

  // set methods
  Set<int> setOfNums = {1, 2, 3};
  print(setOfNums);
  setOfNums.clear(); // clear all items
  print(setOfNums);

  // Map - data is stored as keys and values, each key must be uniques
  Map<String, String> countryCapital = {
    'USA': "Washington, D.C",
    "ID": "Nusantara"
  };
  print(countryCapital);

  // access value from key
  print(countryCapital["ID"]);

  // Map properties
  print(countryCapital.keys); // to get all keys
  print(countryCapital.values); // to get all values
  print(countryCapital.isEmpty); // return true or false
  print(countryCapital.isNotEmpty); // return true or false
  print(countryCapital.length); // return the length of the Map

  // add element to Map
  countryCapital['Japan'] = "Tokyo";

  // updating an element of Map
  countryCapital['ID'] = "DKI Jakarta";
  print(countryCapital);

  // loop through map
  for (MapEntry city in countryCapital.entries) {
    print("Country Capital of ${city.key}: ${city.value}");
  }

  // Map methods
  print(countryCapital.keys.toList()); // convert all Maps keys to List
  print(countryCapital.values.toList()); // convert all Maps values to List
  print(countryCapital.containsKey("ID")); // return true or false
  print(countryCapital.containsValue("DKI Jakarta")); // return true or false
  countryCapital.clear(); // remove all element from Map
  print(countryCapital);
}
