import 'package:dart_async_homework/homeworks/lesson11/Future/task1.dart';
import 'package:dart_async_homework/homeworks/lesson11/Future/task2.dart';

void main () async{
  fetchName();
  fetchAge();
  print("Починаємо отримувати ім'я...");
  String name = await fetchName();
  print("Починаємо отримувати вік...");
  String ageString = await fetchAge();
  int age = int.parse(ageString);
  String yearForm = getYearForm(age);
  print("Мене звати $name");
  print("Мені $age $yearForm");
  print("Кінець програми.");
}