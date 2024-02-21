
import 'dart:io';

void main() {
  print('Init main');
  print(print1());
  print(print2());
  print('Finish Main');
}

String print1() {
  sleep(const Duration(seconds: 5));
  return 'Print 1';
}

String print2() {
  sleep(const Duration(seconds: 2));
  return 'Print 2';
}