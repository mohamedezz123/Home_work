/* 
Question 20
Write a Dart program that checks access rules for a ticket gate. If the user is under 18, check if they
have a parent. Use a switch statement on an area variable (general or restricted) to decide what
message to print.   */

void main() {
  int age = 16;
  bool isUnderAge = age < 18;
  print(isUnderAge);
  String area = "general";

  bool haveParent = false;
  if (isUnderAge) {
    if (haveParent) {
      print("access");
    } else
      (print("access denide "));
  } else
    (print('allowed'));
  switch (area) {
    case 'general':
      print("access to all");
      break;
    case 'restricted':
      if (isUnderAge) {
        print('acceess denide');
      } else
        (print("allowed"));
      break;
    default:
  }
}
