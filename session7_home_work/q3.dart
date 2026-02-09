/* 
Q3 Create a class Movie with attributes title and rating. In main(), create a list of 4 movies. Print
only the movies with a rating above 7.  */

class Movie {
  String title;
  double rating;
  Movie({required this.title, required this.rating});
}

void main() {
  List<Movie> movies = [
    Movie(title: 'Movie1', rating: 7.8),
    Movie(title: 'Movie2', rating: 4.8),
    Movie(title: 'Movie3', rating: 3.8),
    Movie(title: 'Movie4', rating: 8.8),
  ];

  for (var element in movies) {
    if (element.rating > 7) {
      print(element.title);
      print(element.rating);
      print('__________________________________________________');
    }
  }
}
