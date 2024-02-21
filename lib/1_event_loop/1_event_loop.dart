import 'dart:async';

void main() {
  print('Init main');
  Timer.run(() {
    scheduleMicrotask(() => print('New MicroTask 1'));
    print('Event 1');
  });

  Timer.run(() => print('Event 2'));
  Timer.run(() => print('Event 3'));

  scheduleMicrotask(() => print('MicroTask 1'));
  scheduleMicrotask(() => print('MicroTask 2'));
  print('Finish main');
}
