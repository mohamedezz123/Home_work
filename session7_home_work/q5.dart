/* 
Q5 Create a class Course with attributes title and duration (default = 3 months). Create two
courses: one with custom duration and one with the default. Print both. */

class Course {
  String title;
  int duration;
  Course({required this.title, this.duration = 3});
}

void main() {
  Course course1 = Course(title: 'Flutter');
  print(course1.title);
  print(course1.duration);
  print('-----------------------------------');
  Course course2 = Course(title: 'HTML', duration: 5);
  print(course2.title);
  print(course2.duration);
}
