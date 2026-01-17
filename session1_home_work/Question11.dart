/*How do you concatenate strings in Dart? Write an example using two variables:
firstName and lastName.*/

// i can concatenate by using + operator in print
// or i can use + to concatenate the two variable in one new varibale calle full name

void main() {
  String firstName = "Mohamed";
  String lastName = "ezz";
  print(firstName + lastName);
  String fullName = firstName + lastName;
  print(fullName);
}
