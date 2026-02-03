/* 
Q5. Multiplication Table with Sum - Ask the user for a number. - Print its multiplication table up to
10, then calculate the sum of all results.  */

import 'dart:io';

void main() {
  int sum = 0;
  print("enther the number");
  int x = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= 10; i++) {
    print(x * i);
    sum += x * i;
  }
  print("the sum is : $sum");
}
