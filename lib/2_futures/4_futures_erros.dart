void main() {
  Future<double>(() {
    return 10 / 0;
  })
      .then((value) => print('Value $value'), onError: (err) => print(err))
      .catchError((error) => print(error)) // not execute
      .catchError((error) => print(error),
          test: (err) => err is Exception); // test type error

  print('finish main');
}
