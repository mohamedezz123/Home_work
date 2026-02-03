/* 
Q7. Sentence Word Counter - Ask the user for a short sentence. - Print how many words it contains
and how many characters (excluding spaces). */

import 'dart:io';

void main() {
  print('Enter a short sentence:');
  String sentence = stdin.readLineSync()!;
  List<String> words = sentence.trim().split(RegExp(r'\s+'));
  int wordCount = words.length;

  int charCount = 0;
  for (int i = 0; i < sentence.length; i++) {
    if (sentence[i] != ' ') {
      charCount++;
    }
  }
  print('word Count $wordCount');
  print('char count :$charCount');
}
