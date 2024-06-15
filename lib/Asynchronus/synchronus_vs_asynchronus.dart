/* asynchronus - is a way of writing code that allows a program to do multiple tasks at the same time. Time consuming operations like fetching data from the internet, writing to database, reading from a file, and downloading file can be performed without block the main thread of execution 

in Synchronus proramming, the program is executed line by line, one at a time, Synchronus operation means a task that need to be solved before proceeding to the next one.
ex:
vod main(){
  print("first")
  print("second")
  print("third")
  print("last")
}
here in this example, you can see that it will print line by line, let's suppose second takes 3 sec to load then third and alst need to wait 3 sec. to solve this issue, asynchronus proramming is here
*/

// example of asynchronus
void main() {
  print("first");
  Future.delayed(Duration(seconds: 3), () => print("second"));
  print('third');
  print('last');
}


/*
 Why we need asynchronus
- to fetch data from internet
- to write something to database
- to execute a long-time consuming task
- to read data from file
- to download file, etc
 */