import 'dart:io';

void main() {
  File file = File('test.txt'); // open a file
  String contents = file.readAsStringSync(); // read file
  print(contents); // print content

  print("File path: ${file.path}"); // get file path
  print("File absolute path: ${file.absolute.path}"); // get file absolute path
  print('File size: ${file.lengthSync()}');
  print('File last modified: ${file.lastModifiedSync()}');

  file.writeAsStringSync("Hello there! write from code");
  print("File written.");

  file.writeAsStringSync("\nThis is a new content",
      mode: FileMode.append); // add new content to previous content

  // delete a file
  // file.deleteSync();
  // print("file deleted!");
}
