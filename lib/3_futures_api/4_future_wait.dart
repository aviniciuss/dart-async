void main() {
  print('Init main');

  var f1 = Future.delayed(Duration(seconds: 1), () => 'f1');
  var f2 = Future.delayed(Duration(seconds: 1), () => 'f2');
  var f3 = Future.delayed(Duration(seconds: 3), () => 'f3');
  var f4 = Future.delayed(Duration(seconds: 1), () => 'f4');
  var f5 = Future.delayed(Duration(seconds: 1), () => Future.error('error'));

  print(DateTime.now().toIso8601String());
  Future.wait([f1, f2, f3, f4, f5]).then((values) {
    print(DateTime.now().toIso8601String());
    print(values);
  })
  .catchError((err) {
    print(DateTime.now().toIso8601String());
    print('error');
  });

  print('Finish main');

}