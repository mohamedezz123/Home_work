/* 
Q5. Find Second Largest Number - Ask the user to enter 6 numbers in a list. - Print the largest
number and the second largest number (without sorting the list).
*/

import 'dart:io';

void main() {
  int largest = 0;
  int secondLargest = 0;

  List<int> number = [];

  for (int i = 0; i < 6; i++) {
    number.add(int.parse(stdin.readLineSync()!));
  }
  largest = number[0];
  secondLargest = number[0];
  for (int i = 0; i < number.length; i++) {
    if (largest < number[i]) {
      secondLargest = largest;
      largest = number[i];
    }
  }
  print('the largest = $largest');
  print('the secondLargest = $secondLargest');
  print(number);
}
