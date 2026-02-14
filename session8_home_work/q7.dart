/* 
Q7
Ask the user to input a list of integers.
- Print the largest number, the smallest number, and their difference.
- Calculate the average of the list.
- Print all numbers that are above the average.
- Finally, print how many numbers are even and how many are odd in the list. */

import 'dart:io';

void main() {
  print('Enter numbers separated by space:');

  String input = stdin.readLineSync()!;

  List<int> numbers = input.split(' ').map((e) => int.parse(e)).toList();

  int max = numbers[0];
  int min = numbers[0];

  for (int num in numbers) {
    if (num > max) max = num;
    if (num < min) min = num;
  }

  int difference = max - min;

  int sum = 0;
  for (int num in numbers) {
    sum += num;
  }

  double average = sum / numbers.length;

  List<int> aboveAverage = [];

  for (int num in numbers) {
    if (num > average) {
      aboveAverage.add(num);
    }
  }

  int evenCount = 0;
  int oddCount = 0;

  for (int num in numbers) {
    if (num % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
  }

  // Output
  print('Max: $max');
  print('Min: $min');
  print('Difference: $difference');

  print('Average: $average');

  print('Above Average: $aboveAverage');

  print('Even Count: $evenCount');
  print('Odd Count: $oddCount');
}
