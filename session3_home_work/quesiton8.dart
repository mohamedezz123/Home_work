/* 
Question 16
Write a Dart program that evaluates three integer variables with different logical and comparison
expressions. Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on
one of the expressions.
  */

void main() {
  int a = 10;
  int b = 20;
  int c = 15;
  bool firstExp = a < b;
  print(firstExp);
  bool secondExp = a >= b && c <= b;
  print(secondExp);
  bool thirdExp = c == a || a >= b;
  print(thirdExp);

  if (firstExp) {
    print('Rule passed');
  } else {
    print('Rule failed');
  }

  if (secondExp) {
    print('Rule passed');
  } else {
    print('Rule failed');
  }

  if (thirdExp) {
    print('Rule passed');
  } else {
    print('Rule failed');
  }
}
