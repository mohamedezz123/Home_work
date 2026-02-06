/* 
Given an integer array nums, return true if any value 
appears at least twice in the array, and return false if every element is distinct. */

class Solution {
  bool containsDuplicate(List<int> nums) {
    List<int> appears = [];
    for (var element in nums) {
      if (appears.contains(element)) {
        return true;
      }
      appears.add(element);
    }
    return false;
  }
}

void main() {
  List<int> nums1 = [1, 2, 3, 1];
  List<int> nums2 = [1, 2, 3, 4];
  Solution solution = Solution();
  print(solution.containsDuplicate(nums1)); // true
}
