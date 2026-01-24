/* 
Question 9
Write a Dart program that removes duplicate items from a list using a Set. Compare the unique
count with the original list length and print a message if duplicates were removed.
 */

void main() {
  List<int> x = [1, 1, 2, 2, 3, 3, 4, 4];

  int listLength = x.length;
  Set<int> y = x.toSet();

  int uniqueCount = y.length;

  bool isRemoved = uniqueCount < listLength;
  print(isRemoved);
  if (isRemoved) {
    print("duplicated were removed ");
  }

  if (uniqueCount < listLength) {
    print("dublicate removed");
  }
}
