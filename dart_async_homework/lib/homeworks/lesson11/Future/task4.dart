import 'package:dart_async_homework/homeworks/lesson11/Future/task1.dart';
import 'package:dart_async_homework/homeworks/lesson11/Future/task2.dart';
void main() async{
final stopwatch = Stopwatch()..start();
  List<String> results = await Future.wait([
    fetchName(),
    fetchAge(),
  ]);

  stopwatch.stop();
  String name = results[0];
  String ageString = results[1];
  int age = int.parse(ageString);
  String yearForm = getYearForm(age);

  print("\n Мене звати $name");
  print("Мені $age $yearForm");
  print("\n Загальний час виконання (паралельно): ${stopwatch.elapsedMilliseconds} мс");

  print("\n Завершили роботу програми.");
}