/* Stream - a sequence of asynchronus events representing multiple values that will that arrives in the future. stream class deals with sequences of events instead of single events. stream has one or more listeners, and all listeners will receive the same value */

// function that returns a stream
Stream<String> getUsername() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'Hello';
  await Future.delayed(Duration(seconds: 1));
  yield 'There';
  await Future.delayed(Duration(seconds: 1));
  yield 'Are You';
  await Future.delayed(Duration(seconds: 1));
  yield 'Okay?';
}

// yield returns the value from the stream. to use yield you have to use async*

Stream<String> getUsername2() {
  return Stream.fromIterable(['Bae', 'Haqi', 'Lbs']);
}

void main() async {
  await for (String name in getUsername2()) {
    print(name);
  }
}
