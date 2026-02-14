/*
Q2
Create a class Car with private fields _brand and _year.
- Add setters that reject empty brand names and years less than 1886 (first car invention).
- Add getters for both.
- In main(), demonstrate creating two car objects (one valid, one invalid input).
 */

class Car {
  String _brand = '';
  int _year = 0;

  set year(int year) {
    if (year < 1886) {
      print('rejected ');
    } else
      (this._year = year);
  }

  set brand(String brand) {
    if (brand.isEmpty) {
      print("rejected");
    } else
      (this._brand = brand);
  }

  String get brand => this._brand;
  int get year => this._year;
}

void main() {
  Car car1 = Car();

  car1.brand = 'Toyota';
  print(car1.brand);

  car1.year = 1998;
  print(car1.year);

  Car car2 = Car();

  car2.brand = '';
  print(car2.brand);

  car2.year = 1882;
  print(car2.year);
}
