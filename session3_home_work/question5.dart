/* 
Question 13
Write a Dart program that calculates a grade (A, B, C, or D) based on a mark. Then use a switch
statement to print a message for each grade.
*/

void main() {
  int mark = 95;

  String grade;

  if (mark >= 90) {
    grade = 'A';
  } else if (mark >= 80 && mark < 90) {
    grade = 'B';
  } else if (mark >= 65 && mark < 80) {
    grade = 'C';
  } else if (mark >= 50 && mark < 65) {
    grade = 'D';
  } else {
    grade = 'F';
  }
  switch (grade) {
    case 'A':
      print('Excellent');
      break;
    case 'B':
      print('Very good');
      break;
    case 'C':
      print('Good');
      break;
    case 'D':
      print('You need more practice');
      break;
    case 'F':
      print('You failed');
      break;
    default:
      print('Unknown grade');
  }
}
