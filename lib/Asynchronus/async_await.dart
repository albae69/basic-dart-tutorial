/* Async Await - is a feature in dart that allow us to write asynchronus code that looks and behave like synchronus code, making it easier to read 

// Important Concept
- to define an asynchronus function, add async before the function body
- the await keyword work only in the async function
*/

void main() {
  // synchronus
  print("Start");
  getData();
  print("End");
}

// using try catch to handle errors
void getData() async {
  try {
    String data = await middleFunction();
    print(data);
  } catch (e) {
    print(e);
  }
}

Future<String> middleFunction() {
  return Future.delayed(Duration(seconds: 5), () => "Hello");
}
