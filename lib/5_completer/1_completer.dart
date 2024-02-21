import 'dart:async';

void main() async {
  try {
    final result = await getAny(0);
    print(result);
  } catch (e, stack) {
    print(e);
    print(stack);
  }
}

Future<String> getAny(int num) {
  final completer = Completer<String>();

  Timer(Duration(seconds: 2), () {
    if(num == 0) {
      completer.complete('Send success');
    } else {
      completer.completeError('Send error', StackTrace.current);
    }
  });

  return completer.future;
}