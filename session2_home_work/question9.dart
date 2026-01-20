/* 
Exercise 9:
9. a) Create List> students with two items, each having name and grade.
b) Print the grade of the second student using index and key.
c) Add both grades and print the average grade as double   */

void main() {
  List<Map<String, dynamic>> students = [
    {'name': "Ahmed", 'grade': 3.8},
    {'name': "mohamed", 'grade': 2.8},
  ];
  print(students[1]['grade']);

  num sum = students[0]['grades'] + students[1]['grades'];
  double average = sum / students.length;
  print(average);
}
