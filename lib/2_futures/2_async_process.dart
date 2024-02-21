import 'dart:async';

void main() {
  print('Init main');
  fun1();
  fun2();
  print('Finish main');
}

void fun1() {
  print('Init fun1');
  Future.delayed(Duration(seconds: 2), () => print('exec process func1'));
  print('Finish fun1');
}

void fun2() {
  print('Init fun2');
  Future.delayed(Duration(seconds: 1), () => print('exec process func2'));
  print('Finish fun2');
}
