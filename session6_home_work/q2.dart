/* 
Q2. Class with Constructor - Create a class Car with attributes brand and year. - Add a constructor
to set the values when creating the object. - In main(), create two car objects with different data and
print their details  */

class Car {
  String brand;
  int year;

  Car(this.brand, this.year);
}

void main() {
  Car car1 = Car('toyota', 2010);
  print('the brand is ${car1.brand} The car was manufactured in ${car1.year}');

  Car car2 = Car('BMW', 2015);
  print('the brand is ${car2.brand} The car was manufactured in ${car2.year}');
}
