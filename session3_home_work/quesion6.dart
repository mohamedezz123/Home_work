/* Question 14
Write a Dart program that works with a nullable list of integers. If the list is null or empty, print 'No
scores'. Otherwise, calculate and print the sum of the first and last elements and check if it is
greater than or equal to 40. */

void main() {
  List<int>? x = [];
  int sum;

  if (x == null || x.isEmpty) {
    print("no Scores");
  } else {
    sum = x.first + x.last;

    bool isGreater = sum >= 40;
    print("if the sum >=40? : $isGreater");
  }
}
