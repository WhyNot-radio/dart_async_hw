import 'package:dart_async_homework/homeworks/lesson11/Future/Task5.dart';
import 'package:dart_async_homework/homeworks/lesson11/Future/task1.dart';
import 'package:dart_async_homework/homeworks/lesson11/Future/task2.dart';

void main () async{
  fetchName();
  fetchAge();
  print("Починаю виконання асинхронних операцій...");

  String countDownresult = await delayedcountDown(3);
  print(countDownresult);
  final stopwatchName = Stopwatch()..start();
  print("\n Отримую ім'я...");
  String name = await fetchName();
  stopwatchName.stop(); 
  print("Мене звати $name");
  print("Час виконання fetchName(): ${stopwatchName.elapsedMilliseconds} мс");

  final stopwatchAge = Stopwatch()..start();
  print("\n Отримую вік...");
  String ageString = await fetchAge();
  int age = int.parse(ageString);
  String yearForm = getYearForm(age);
  print("Мені $age $yearForm");
  print("Час виконання fetchAge()");
  print("\n Кінець програми.");
}