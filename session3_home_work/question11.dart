/* 
Question 19
Write a Dart program that converts a list of names to a set of unique values. Create a map with
counts of occurrences. Compare lengths and print a message if a specific name appears more than
once */

void main() {
  List<String> lNames = ['Ahmed', 'Ahmed', 'mohamed', 'Adel'];
  Set<String> sNames = lNames.toSet();
  if (sNames.length < lNames.length) {
    print('there is duplicate name');
  } else {
    print('no dublicated');
  }
}
