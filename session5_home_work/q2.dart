/* 
Q2. Odd Numbers in a Range - Ask the user to input a number n. - Print all odd numbers between 1
and n, and also print how many odd numbers were found.
 */

import 'dart:io';

void main() {
  int count = 0;
  print('Enter number:');
  int x = int.parse((stdin.readLineSync()!));
  print("------------------------------");
  for (int i = 1; i <= x; i++) {
    if (i % 2 != 0) {
      print(i);
      count++;
    }
  }
  print('--------------------------------------------');
  print(count);
}
