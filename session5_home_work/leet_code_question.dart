import 'dart:io';

class Solution {
  bool isPalindrome(String s) {
    String cleaned;
    String reversed;
    bool isPalind = false;
    cleaned = s.toLowerCase();

    cleaned = cleaned.replaceAll(RegExp(r'[^a-z0-9]'), '');
    reversed = cleaned.split('').reversed.join('');
    if (cleaned == reversed) {
      isPalind = true;
    } else {
      isPalind = false;
    }
    print(isPalind);
    if (isPalind && cleaned.isNotEmpty) {
      print('$cleaned is a palindrome');
    } else if (isPalind && cleaned.isEmpty) {
      print(
        's is an empty string "" after removing non-alphanumeric characters. Since an empty string reads the same forward and backward, it is a palindrome.',
      );
    } else {
      print('$cleaned is not a palindrome.');
    }

    return isPalind;
  }
}

void main() {
  String s;
  s = stdin.readLineSync()!;
  Solution x = Solution();
  x.isPalindrome(s);
}
