/* 
Question 18
Write a Dart program that reads environment variables from a map. If a value is null, replace it with
a default. Print values in uppercase, and display 'Prod ready' or 'Non-prod' depending on
conditions.
*/

void main() {
  Map<String, String?> environment = {'ENV': 'prod', 'API_KEY': null};
  String enviro = environment['x'] ?? 'non prod';
  String apiKey = environment['y'] ?? 'no api ';

  print(enviro.toUpperCase());
  print(apiKey.toUpperCase());

  if (enviro == 'prod' && apiKey == 'api') {
    print('Prod ready');
  } else
    print('Non-prod');
}
