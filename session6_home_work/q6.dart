/*
Q6. Sentence Analyzer - Ask the user to input a sentence. - Print how many words it contains. -
Then print the shortest word and the longest word from the sentence. */

import 'dart:io';

void main() {
  print("Enter a sentence:");
  String sentence = stdin.readLineSync()!;

  List<String> words = sentence.trim().split(RegExp(r'\s+'));

  int wordCount = words.length;
  String shortest = words[0];
  String longest = words[0];

  for (var element in words) {
    if (element.length < shortest.length) {
      shortest = element;
    }

    if (element.length > longest.length) {
      longest = element;
    }
  }
  print(longest);
  print(shortest);
}
