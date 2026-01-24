/* 
Question 17
Write a Dart program that formats a price tag string with a currency. Apply string methods such as
toString, padLeft, and length to format and compare the results.   */

void main() {
  double price = 60.5;
  String currency = 'EGP';
  String beforeFormat = price.toString() + currency;
  print(beforeFormat);
  String formatPrice = currency.padLeft(5);

  String priceWithTagFormatted = price.toString() + formatPrice;
  print(priceWithTagFormatted);

  if (beforeFormat.length > priceWithTagFormatted.length) {
    print("berofe format is taller");
  } else
    (print('Formatted tag is taller'));
}
