/* Q5
Create a class Book with private fields _title and _pages.
- Add setters: reject empty titles and pages ≤ 0.
- Add a getter title and a computed getter readingTime that assumes 2 minutes per page.
- In main(), create a book, print its title and estimated reading time */

class Book {
  String _title = '';
  int _pages = 0;

  set title(String title) {
    if (title.isEmpty) {
      print('reject');
    } else
      (this._title = title);
  }

  set pages(int pages) {
    if (pages <= 0) {
      print('reject');
    } else
      (this._pages = pages);
  }

  String get title => this._title;
  int get pages => this._pages;
  int get readingTime => this._pages * 2;
}

void main() {
  Book book = Book();
  book.title = 'book1';
  book.pages = 20;

  print(book.title);
  print(book.pages);

  print(book.readingTime);
}
