/* 
  Q7 Ask the user for a number (e.g., 9875). Keep summing its digits until the result is a single digit.
Print the final single-digit result. (Example: 9+8+7+5 = 29 → 2+9 = 11 → 1+1 = 2) */

import 'dart:io';

void main() {
  int sum = 0;
  int sum2 = 0;
  String input = stdin.readLineSync()!;

  for (int i = 0; i < input.length; i++) {
    sum += int.parse(input[i]);
  }
  print(sum);

  int n = int.parse(stdin.readLineSync()!);
  while (n > 0) {
    sum2 += n % 10;
    n = n ~/ 10;
  }
  print(sum2);
}
