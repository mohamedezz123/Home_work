/* 
Q13
Create a program with the list of names ['Ali', 'Mona', 'Ali', 'Omar', 'Mona']. Count how many times
each name appears. Print only the names that appear more than once. */

void main() {
  List<String> names = ['Ali', 'Mona', 'Ali', 'Omar', 'Mona'];
  Map<String, int> count = {};

  for (var item in names) {
    count[item] = (count[item] ?? 0) + 1;
  }
  for (var item in count.entries) {
    if (item.value > 1) {
      print(item.key);
    }
  }
}
