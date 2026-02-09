/* 
Q2 Create a class Temperature with an attribute celsius. Add a method   () that returns
the temperature in Fahrenheit. In main(), create an object and print the converted value. 
(0°C × 9/5) + 32 = 32°F
*/
class Temperature {
  double celsius;
  Temperature({required this.celsius});
  double toFahrenheit() {
    double fahrenheit = (celsius * 9 / 5) + 32;
    return fahrenheit;
  }
}

void main() {
  Temperature temperature = Temperature(celsius: 2);
  print(temperature.toFahrenheit());
}
