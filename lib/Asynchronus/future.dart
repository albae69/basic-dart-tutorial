/* Future - represents a value or error that is not yet available. it is used to represent a potential value, or error, that will be available at some time in the future 

you can create a future in dart by using Future class
*/

// function that returns a future
Future<String> getUserName() async {
  return Future.delayed(Duration(seconds: 2), () => 'Bae');
}

Future<String> getUserName2() {
  return Future.value('Bae');
}

void main() {
  print('Start');
  getUserName().then((value) => print(value));
  getData();
  print('End');
}

void getData() async {
  String data = await middleFunction();
  print(data);
}

Future<String> middleFunction() {
  return Future.delayed(Duration(seconds: 5), () => "Hello world!");
}
