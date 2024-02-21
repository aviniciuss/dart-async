void main() {
  final total = totalStudents();
  total.then((value) => print('Total completed: $value'));
  print('Total students $total');
}

Future<int> totalStudents() async {
  print('async method');
  final total = await Future.value(887);
  print('after await');
  return total;
}
