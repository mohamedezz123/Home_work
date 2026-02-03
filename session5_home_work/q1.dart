/* 
Q1. Sum, Average & Compare - Ask the user for three numbers. - Print their sum and average.
Then, check if the average is greater than 50 or not.  */

import 'dart:io';

void main() {
  int sum;
  double average;
  print('Enter first number:');
  int x = int.parse((stdin.readLineSync()!));
  print('Enter second number:');
  int y = int.parse((stdin.readLineSync()!));
  print('Enter third number:');
  int z = int.parse((stdin.readLineSync()!));

  sum = x + y + z;
  print(sum);
  average = sum / 3;
  print(average);
  bool isGreater = average > 50;
  if (average > 50) {
    print('The average is greater than 50.');
  } else {
    print('The average is not greater than 50.');
  }
}
