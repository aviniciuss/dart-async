void main() {
  final wait = loongInsert();
  print(DateTime.now().toIso8601String());

  wait
      .timeout(Duration(seconds: 1), onTimeout: () => print('Finish timeout'))
      .catchError((err) => print('Error: $err'));
}

Future<void> loongInsert() {
  return Future.delayed(Duration(seconds: 3), () {
    print('Finish loongInsert');
    print(DateTime.now().toIso8601String());
  });
}
