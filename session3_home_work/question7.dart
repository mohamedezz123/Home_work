/* 
Question 15
Write a Dart program that simulates a simple router using a switch statement on a string path ('/',
'/products', '/profile', or other). Handle each case with appropriate output, including maps and null
safety where needed.   */

void main() {
  String path = '/profile';
  Map<String, dynamic> products = {'name': 'Laptop', 'price': 500};

  Map<String, String?> profiles = {'name': 'Mohamed', 'phoneNumber': null};

  switch (path) {
    case '/':
      print("home screen");
      break;

    case '/products':
      print(
        "product name : ${products['name']} , price : ${products['price']} ",
      );
      break;

    case '/profile':
      String name = profiles['name'] ?? 'name is missing';
      String? phoneNumber = profiles['phoneNumber'];
      print(name);
      if (phoneNumber == null) {
        print("Phone number Missing");
      } else {
        print(phoneNumber);
      }
      break;
    default:
      ;
  }
}
