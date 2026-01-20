/* 
Exercise 10:
10. a) Demonstrate var vs dynamic: assign dynamic value first as an int, then as a String, printing
after each.
b) Create var greeting = 'Hi'; change it to another String and print.
c) Declare num pi = 3.14159; print pi.toInt() and pi.toStringAsFixed(3)    */

// var is keyword not a datatype  and it is replaced with datatype equal to the value aassigned to it
// but if u just declare the var without assigne a value to it it will be like the dynamic and u can assign a diffrent values with differen datatype to it

// daynamic  is a datatype that can store any value with different datatype   and we use it when there is a value u do not know the type of it

void main() {
  dynamic x = 10;
  print(x);
  x = "mohamed";
  print(x);

  var greeting = 'Hi';
  greeting = "hello";
  print(greeting);

  num pi = 3.14159;
  print(pi.toInt());
  print(pi.toStringAsFixed(3));
}
