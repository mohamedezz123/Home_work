/* Q8 Ask the user to input a sentence. Print all the words that appear only once in the sentence. Also
print the total count of unique words. */

import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;
  int count = 0;

  List<String> words = input.trim().split(RegExp(r'\s+'));
  print(words);

  Map<String, int> countMap = {};

  for (var element in words) {
    countMap[element] = (countMap[element] ?? 0) + 1;
  }

  for (var element in countMap.entries) {
    if (!(element.value > 1)) {
      print(element.key);
      count++;
    }
  }
  print(count);
}
