/*Given this code, identify any errors and explain why they occur: ```dart void main()
{ String name = "Alice"; name = 123; print(name); } ```*/

// the error that it assigned integer value to string variable  cause the
//string is explicity typed variable that i can assigned specific typer to it and in this case is string

void main() {
  String name = "alice";
  // error occure here in the line below
  name = 123;
  print(name);
}
