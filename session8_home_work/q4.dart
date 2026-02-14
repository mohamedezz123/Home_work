/* 
Q4
Create a class Product with private fields _name and _price.
- Reject empty names and negative prices in setters.
- Add a computed getter discountedPrice that returns the price with a 10% discount applied.
- In main(), demonstrate setting values and printing the original and discounted price */

class Product {
  String _name = '';
  double _price = 0;

  set name(String name) {
    if (name.isEmpty) {
      print('rejected');
    } else
      (this._name = name);
  }

  set price(double price) {
    if (price < 0) {
      print('rejected');
    } else
      (this._price = price);
  }

  String get name => this._name;
  double get price => this._price;

  double get discountedPrice => this._price * 0.90;
}

void main() {
  Product product = Product();

  product.name = 'Laptop';
  product.price = 1000;

  print('Name: ${product.name}');
  print('Original Price: ${product.price}');
  print('Discounted Price: ${product.discountedPrice}');

  product.name = '';
  product.price = -50;
}
