/* 
Q6. Number Guessing (3 Tries) - Generate a random number between 1 and 20. - Let the user
guess up to 3 times. If they fail, reveal the correct number.
 */

import 'dart:io';
import 'dart:math';

void main() {
  int randomNumber = Random().nextInt(20) + 1;
  print(randomNumber);

  for (int i = 0; i < 3; i++) {
    print('try number :${i + 1}');
    int x = int.parse(stdin.readLineSync()!);
    if (x == randomNumber) {
      print("ur guessing is right");
      break;
    } else {
      if (i + 1 == 3) {
        print('fail and the correct number is $randomNumber');
      }
    }
  }
}
