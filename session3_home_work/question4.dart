/* 
Question 12
Create a Dart program that safely reads a phone number from a map. If the phone number is null,
print a default message. Then update the phone number and print its length. */

void main() {
  Map<String, String?> phoneNumbers = {
    'firsNumb': '1224324235',
    'secondNumb': null,
  };
  String? phoneNumber;
  phoneNumber = phoneNumbers['secondNumb'];
  if (phoneNumber == null) {
    print("the phone number is null");
  }
  phoneNumbers['secondNumb'] = '123123124';
  phoneNumber = phoneNumbers['secondNumb'];
  print(phoneNumber!.length);
}
