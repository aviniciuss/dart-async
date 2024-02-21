void main() {
  print('Init main');

  Future<String>(() => 'Result Future').then(print);
  Future<String>.microtask(() => 'Result Future MicroTask').then(print);

  print('Finish main');
}