/* 
Q4. Class with Default Attribute Value - Create a class Product with attributes name and price. -
Give price a default value of 0. - Create two objects: one with a custom price and one with the
default price. Print their details.
 */

class Product {
  String? name;
  int price = 0;
}

void main() {
  Product product1 = Product();
  product1.name = 'product1';
  Product product2 = Product();
  product2.name = 'product2';
  product2.price = 200;

  print("${product1.name}   ${product1.price}");
  print("${product2.name} ${product2.price}");
}
