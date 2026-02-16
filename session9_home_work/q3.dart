/* Q3
Given an array of integers nums sorted in ascending order, and an integer target, write a function to
search target in nums.
- If target exists, return its index. Otherwise, return -1.
- The algorithm must run in O(log n) time complexity.
Examples:
- Input: nums = [-1,0,3,5,9,12], target = 9 → Output: 4
Explanation: 9 exists in nums and its index is 4.
- Input: nums = [-1,0,3,5,9,12], target = 2 → Output: -1
Explanation: 2 does not exist in nums, so return -1 */

List<int> sort(List<int> nums) {
  for (int i = 0; i < nums.length; i++) {
    int x = 0;

    for (int j = i + 1; j < nums.length; j++) {
      if (nums[i] > nums[j]) {
        x = nums[i];
        nums[i] = nums[j];
        nums[j] = x;
      }
    }
  }
  return nums;
}

int search(List<int> sortedList, int targetValue) {
  for (int i = 0; i < sortedList.length; i++) {
    if (sortedList[i] == targetValue) {
      return i;
    }
  }
  return -1;
}

void main() {
  List<int> nums = [1, 0, 2, 5, 6];

  print(sort(nums));
  print(search(sort(nums), 5));

  List<int> nums2 = [-1, 0, 3, 5, 9, 12];

  print(search2(nums2, 9));

  print(search2(nums2, 2));
}

// ______________________________________________________________________________
int search2(List<int> nums, int target) {
  int left = 0;
  int right = nums.length - 1;

  while (left <= right) {
    int mid = left + (right - left) ~/ 2;

    if (nums[mid] == target) {
      return mid;
    } else if (nums[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }

  return -1;
}
