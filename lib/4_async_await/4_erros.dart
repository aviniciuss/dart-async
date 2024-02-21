void main() async {
  print('Init main');

  try {
    final id = await getId();
    final name = await getName(id);
    print(name);
  } catch (e) {
    print(e);
  }
  print('Finish main');
}

Future<int> getId() async => 80;
Future<String> getName(int id) async {
  throw Exception();
  return 'Anderson Vinicius';
}
