void main() async {
  print('Init main');
  final names = ['Anderson', 'Barbara', 'Gaby'];

  // bad
  //names.forEach((element) async {
  //  final result = await welcome(element);
  //  print(result);
  //});

  // good
  //for(var name in names) {
  //  final result =  await welcome(name);
  //  print(result);
  //}

  // good
  await Future.forEach(names, (name) async {
    final result = await welcome(name);
    print(result);
  });

  // good parallel
  final namesFuture = names.map((name) => welcome(name)).toList();
  final namesProcessed = await Future.wait(namesFuture);
  print(namesProcessed);

  print('Finish main');
}

Future<String> welcome(String name) async {
  return Future.delayed(Duration(seconds: 1), () {
    return 'Hello $name';
  });
}
