import 'package:dart_async_homework/homeworks/lesson11/Future/task1.dart';

void main () async{
  fetchName();
  print("Починаємо отримувати ім'я...");
  String name = await fetchName();

  print("Мене звати $name");

  print("Завершили роботу програми.");
}