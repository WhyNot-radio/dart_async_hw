import 'dart:async'; 
Future<String> fetchAge() async {
  await Future.delayed(Duration(milliseconds: 1500));
  return "24";
}

String getYearForm(int age) {
  if (age % 10 == 1 && age % 100 != 11) {
    return 'рік';
  } else if ([2, 3, 4].contains(age % 10) && ![12, 13, 14].contains(age % 100)) {
    return 'роки';
  } else {
    return 'років';
  }
}