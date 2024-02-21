void main() {
  //final name = unAsyncMethod();
  //name.then(print);

  final name = asyncMethod();
  print(name);
}

Future<String> unAsyncMethod() {
  return Future.value('Anderson Vinicius');
}

Future<String> asyncMethod() async {
  return 'Anderson Vinicius';
}
