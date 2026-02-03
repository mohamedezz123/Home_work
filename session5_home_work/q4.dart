/* 
Q4. Simple List Analyzer - Let the user enter 5 numbers into a list. - Print the largest and smallest
numbers, and then calculate the difference between them. */

import 'dart:io';

void main() {
  List<int> numbers = [];
  int largest = 0;
  int smallest = 0;
  int difference = 0;
  for (int i = 0; i < 5; i++) {
    numbers.add(int.parse((stdin.readLineSync()!)));
  }
  print(numbers);
  for (int i = 1; i < numbers.length; i++) {
    largest = numbers[0];
    if (largest < numbers[i]) {
      largest = numbers[i];
    }
  }
  print('the largest number : $largest');
  for (int i = 1; i < numbers.length; i++) {
    smallest = numbers[0];
    if (smallest > numbers[i]) {
      smallest = numbers[i];
    }
  }
  print('the smallest number : $smallest');
  difference = largest - smallest;
  print(difference);
}
