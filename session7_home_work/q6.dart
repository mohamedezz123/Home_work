/*
Q6 Create a class NumberCheck with an attribute value. Add a method isEven() that returns true if
the number is even, false otherwise. In main(), test the method with one number */

class NumberCheck {
  int value;
  NumberCheck({required this.value});

  bool isEven() {
    if (value % 2 == 0) {
      print('this number : $value is even');
      return true;
    }
    return false;
  }
}

void main() {
  NumberCheck numberCheck = NumberCheck(value: 33);
  print(numberCheck.isEven());
}
