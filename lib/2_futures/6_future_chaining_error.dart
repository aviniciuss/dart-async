void main() {
  fun1()
      .then((value) => fun2())
      .then((value) => fun3(),
          onError: (err) => Future.value('Recovery Param 3'))
      .then(print)
      .catchError((err) => print('error'));
}

Future<String> fun1() {
  print('fun1');
  return Future.value('Result 1');
}

Future<String> fun2() {
  print('fun2');
  throw Exception();
  return Future.value('Result 2');
}

Future<String> fun3() {
  print('fun3');
  return Future.value('Result 3');
}
