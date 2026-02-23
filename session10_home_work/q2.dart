/* 
2. Food Delivery App – Orders & Menu
Imagine you are building a food delivery app.
- The app has a menu of food items (each with a name, price, and category like "Pizza" or "Drinks").
- A user can add multiple items to an order.
- The app should calculate the total price of the order. */

class FoodItem {
  String name;
  double price;
  String category;

  FoodItem(this.name, this.price, this.category);
}

class Order {
  List<FoodItem> items = [];

  void addItem(FoodItem item) {
    items.add(item);
  }

  double calculateTotal() {
    double total = 0.0;
    for (var item in items) {
      total += item.price;
    }
    return total;
  }
}
