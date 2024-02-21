void main() {
  fun1().then((value) => fun2(value)).then((value) => print(value));
}

Future<String> fun1() {
  return Future.delayed(Duration(seconds: 1), () => 'Param 1');
}

Future<String> fun2(String param) {
  return Future.value('exec with param: $param');
}
