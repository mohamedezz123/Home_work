/* 
Q2
Model shapes to compute total paintable area and cost.
Requirements:
- Provide a general shape type (concrete class) with an area() method that can be overridden.
- Implement at least three concrete shape types with encapsulated dimensions and validated
constructors (invalid → print; keep previous).
- Use polymorphism with a mixed collection of shapes to compute total area (no type checks in client
code).
- Apply tiered pricing: first 50 units at 1.50, next 100 at 1.25, remainder at 1.00; print total area and total
cost to 2 decimals. */

import 'dart:math';

class shape {
  double area() {
    return 0;
  }
}

class Rectangle extends shape {
  double _width;
  double _hieght;

  Rectangle(double width, double hieght) : _width = 0, _hieght = 0 {
    this.hieght = hieght;
    this.width = width;
  }

  set width(double vlaue) {
    if (vlaue > 0) {
      _width = vlaue;
    } else
      (print("ivalid width"));
  }

  set hieght(double vlaue) {
    if (vlaue > 0) {
      _hieght = vlaue;
    } else
      (print("ivalid hieght"));
  }

  @override
  double area() {
    return _width * _hieght;
  }
}

// ______________________________________________________________________________________//

class Triangle extends shape {
  double _base;
  double _hieght;

  Triangle(double base, double hieght) : _base = 0, _hieght = 0 {
    this.hieght = hieght;
    this.base = base;
  }

  set base(double vlaue) {
    if (vlaue > 0) {
      _base = vlaue;
    } else
      (print("ivalid base"));
  }

  set hieght(double vlaue) {
    if (vlaue > 0) {
      _hieght = vlaue;
    } else
      (print("ivalid hieght"));
  }

  @override
  double area() {
    return .5 * _base * _hieght;
  }
}

// __________________________________________________________________________________________//

class Circle extends shape {
  double _radius;

  Circle(double radius) : _radius = 0 {
    this.radius = radius;
  }

  set radius(double vlaue) {
    if (vlaue > 0) {
      _radius = vlaue;
    } else
      (print("ivalid radius"));
  }

  @override
  double area() {
    return pi * _radius * _radius;
  }
}

void main() {
  double calculateCost(double totalArea) {
    double cost = 0;

    if (totalArea <= 50) {
      cost = totalArea * 1.50;
    } else if (totalArea <= 150) {
      cost = (50 * 1.50) + ((totalArea - 50) * 1.25);
    } else {
      cost = (50 * 1.50) + (100 * 1.25) + ((totalArea - 150) * 1.00);
    }

    return cost;
  }

  List<shape> shapes = [Rectangle(10, 10), Circle(7), Triangle(8, 6)];

  for (var shape in shapes) {
    print(shape.area());
    print(calculateCost(shape.area()));
  }
}
