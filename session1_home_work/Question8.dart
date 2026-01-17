//What is the difference between the num and double data types in Dart

// num datatype can store any number (integer , double ) it is good when the value might change its type
// double data type can only assigned decimal values
void main() {
  // in this case below the num is the best choise
  num x = 20;
  x = 20.5;
  //  it will store decimal value
  double y = 20.5;
  // and if u assigned integer value to it  will converted to 20.0 but it will still working
  y = 20;
}
