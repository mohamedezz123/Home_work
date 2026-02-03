/* 
Q3. Word Reversal & Vowel Count - Take a word from the user. - Print the word reversed, and also
count how many vowels it has.
*/

import 'dart:io';

void main() {
  print("Enter a word ");
  String word = stdin.readLineSync()!;
  print(word);
  String reversedWord = word.split('').reversed.join('');
  print(reversedWord);
  int vCount = 0;
  String vowels = 'aeiouAEIOU';
  for (int i = 0; i < word.length; i++) {
    if (vowels.contains(word[i])) {
      vCount++;
    }
  }
  print(vCount);
}
