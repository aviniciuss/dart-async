void main() {
  print('Init main');

  Future<String>.sync(() {
    print('Executed Function');
    return 'Result Future';
  }).then(print);

  print('Finish main');

}