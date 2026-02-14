bool isAnagram(String s, String t) {
  if (s.length != t.length) return false;

  Map<String, int> freq = {};

  for (int i = 0; i < s.length; i++) {
    freq[s[i]] = (freq[s[i]] ?? 0) + 1;
    freq[t[i]] = (freq[t[i]] ?? 0) - 1;
  }

  for (var value in freq.values) {
    if (value != 0) return false;
  }

  return true;
}
