/* Q1
Design an OOP model for planning trip fuel across multiple vehicle types.
Requirements:
- Provide a general vehicle type with encapsulated core data (private fields) and validated constructors
(invalid → print an error; keep previous values).
- Create at least two specialized vehicle types that inherit from the general type and introduce one
private field each affecting fuel usage, with validation.
- Define a fuel computation method in the general type; specialized types must override it with their own
rule.
- In a mixed collection of vehicles, given a list of trip distances, compute total fuel per vehicle and print
which vehicles cannot complete the route under their own constraints (you define the constraint per
type).
 */

import 'dart:ffi';

class Vehicle {
  double _fuelCapacity;
  double _fuelEfficiency; // k/l

  Vehicle(double fuelCapacity, double fuelEfficiency)
    : _fuelCapacity = 0,
      _fuelEfficiency = 0 {
    this.fuelCapacity = fuelCapacity;
    this.fuelEfficiency = fuelEfficiency;
  }
  set fuelCapacity(double capacity) {
    if (capacity > 0) {
      _fuelCapacity = capacity;
    } else
      (print('Invalid fuel capacity'));
  }

  set fuelEfficiency(double value) {
    if (value > 0) {
      _fuelEfficiency = value;
    } else {
      print("Invalid fuel efficiency");
    }
  }

  double get fuelCapacity => _fuelCapacity;
  double get fuelEfficiency => _fuelEfficiency;

  double fuelComputation(double distance) {
    return distance / fuelEfficiency;
  }

  bool canComplete(double fuelNedded) {
    return fuelNedded <= _fuelCapacity;
  }
}

//------------------------------------------------------------------
class Car extends Vehicle {
  double _speed;

  Car(double speed, double fuelCapacity, double fuelEfficiency)
    : _speed = 0,
      super(fuelCapacity, fuelEfficiency) {
    this.speed = speed;
  }

  set speed(double vlaue) {
    if (vlaue > -0) {
      _speed = vlaue;
    } else
      (print('invalid speed value'));
  }

  get speed => _speed;

  @override
  double fuelComputation(double distance) {
    double baseFuel = super.fuelComputation(distance);

    if (_speed > 120) {
      return baseFuel * 1.2;
    }
    return baseFuel;
  }
}

class Truck extends Vehicle {
  double _carWeight;
  Truck(double fuelCapacity, double fuelEfficiency, double carWeight)
    : _carWeight = 0,
      super(fuelCapacity, fuelEfficiency) {
    this.carWeight = carWeight;
  }

  set carWeight(double value) {
    if (value > 0) {
      _carWeight = value;
    } else {
      print("invalid weight value");
    }
  }

  double fuelComputation(double distance) {
    double baseFuel = super.fuelComputation(distance);

    if (_carWeight > 100) {
      return baseFuel * 1.8;
    }
    return baseFuel;
  }
}

void main() {
  List<Vehicle> vehicleList = [Car(110, 28, 20), Truck(50, 8, 110)];

  List<double> tripDistances = [100, 150, 200];

  for (var vehicle in vehicleList) {
    double totalFuel = 0;
    for (var distance in tripDistances) {
      totalFuel += vehicle.fuelComputation(distance);
    }
    print("Total fuel needed: ${totalFuel.toStringAsFixed(2)}");
    print('______________________________________');
    if (vehicle.canComplete(totalFuel)) {
      print("Vehicle can complete the trip \n");
    } else
      (print("Vehicle can not complete the trip \n"));
  }
}
