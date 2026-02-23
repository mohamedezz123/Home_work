/* 
Given the head of a singly linked list, reverse the list, and return the reversed list. */
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? reverseList(ListNode? head) {
    ListNode? prev = null;
    ListNode? current = head;
    ListNode? next;

    while (current != null) {
      next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }

    return prev;
  }
}

void main() {
  ListNode n1 = ListNode(10);
  ListNode n2 = ListNode(15);
  ListNode n3 = ListNode(20);
  ListNode n4 = ListNode(25);
  ListNode? head = n1;

  n1.next = n2;
  n2.next = n3;
  n3.next = n4;

  Solution sol = Solution();
  head = sol.reverseList(head);
}
