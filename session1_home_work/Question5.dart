//What is the difference between var and dynamic in Dart? Provide an example of each.

// var is keyword not a datatype  and it is replaced with datatype equal to the value aassigned to it
// but if u just declare the var without assigne a value to it it will be like the dynamic and u can assign a diffrent values with differen datatype to it

// daynamic  is a datatype that can store any value with different datatype   and we use it when there is a value u do not know the type of it

void main() {
  // in this case the var will replace with string
  var name = "Mohamed Ezz";
  // now var act as dynamic
  var x;
  // i can now assign string to it
  x = "mohamed";
  // or an integer value
  x = 20;
  // i can assigned to it different value with different data type
  dynamic value = "ezz";
  value = 20;
  value = 20.5;
}
