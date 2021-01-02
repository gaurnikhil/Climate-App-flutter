import 'dart:io';

void main() {
  performTasks();
}

String result;

void performTasks() async {
  task1();
  String result = await task2();
  task3(result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future task2() async {
  Duration threeSec = Duration(seconds: 3);

  String result;

  await Future.delayed(threeSec, () {
    result = 'Task2data';
    print('Task 2 complete');
  });

  return result;
}

void task3(String result) {
  print('Task 3 complete with $result');
}
