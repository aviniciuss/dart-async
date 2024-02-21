import 'dart:io';

void main() {
  // Future -> Pending, Completed with Value, Completed with Error, Canceled

  Future(() {
    print('execution...');
    sleep(Duration(seconds: 5));
  })
      .then((value) => print('Completed with Value'))
      .catchError((error) => print(' Completed with Error'))
      .whenComplete(() => print('Completed with Success'));
}
