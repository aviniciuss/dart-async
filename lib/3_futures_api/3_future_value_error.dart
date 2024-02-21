void main() {

  Future((){});
  Future.value('');
  Future.error('');

}

Future<String> func1() {
  return Future.value('Result fun1');
}