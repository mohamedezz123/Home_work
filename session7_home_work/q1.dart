/* Q1 Create a class City with attributes name and population. In main(), create two city objects and
print their details.  */

class City {
  String? name;
  int? population;
}

void main() {
  City city1 = City();
  city1.name = "Egypt";
  city1.population = 5000;
  print(
    'this is ${city1.name} and the population of this city is : ${city1.population}',
  );

  City city2 = City();
  city2.name = "Sodan";
  city1.population = 1000;
  print(
    'this is ${city2.name} and the population of this city is : ${city2.population}',
  );
}
