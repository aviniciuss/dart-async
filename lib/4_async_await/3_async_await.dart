Future<int> getId() async => 80;
Future<String> getName(int id) async => 'Anderson Vinicius';

Future<String> getUser() async {
  final id = await getId();
  final name = await getName(id);
  return name;
}

void main() async {
  print('Init main');
  final user = await getUser();
  print(user);
  print('Finish main');
}