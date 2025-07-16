import 'package:dart_async_homework/homeworks/lesson11/Future/task1.dart';
import 'package:dart_async_homework/homeworks/lesson11/Future/task2.dart';

void main () async{
  fetchName();
  fetchAge();
  print("Починаємо виконання асинхронних операцій...");

  // --- Вимірювання часу для fetchName() ---
  final stopwatchName = Stopwatch()..start(); // Створюємо та запускаємо секундомір
  print("\n Отримую ім'я...");
  String name = await fetchName();
  stopwatchName.stop(); // Зупиняємо секундомір
  print("Мене звати $name");
  print("Час виконання fetchName(): ${stopwatchName.elapsedMilliseconds} мс");

  // --- Вимірювання часу для fetchAge() ---
  final stopwatchAge = Stopwatch()..start(); // Створюємо та запускаємо секундомір
  print("\n Отримую вік...");
  String ageString = await fetchAge();
  stopwatchAge.stop(); // Зупиняємо секундомір
  int age = int.parse(ageString);
  String yearForm = getYearForm(age);
  print("Мені $age $yearForm");
  print("Час виконання fetchAge(): ${stopwatchAge.elapsedMilliseconds} мс");
  print("\n Кінець програми.");
}