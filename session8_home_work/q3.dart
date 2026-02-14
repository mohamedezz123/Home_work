/* 
Q3
Create a class Grade with a private field _score.
- The setter should only accept values 0–100, otherwise print 'Invalid score'.
- Add a getter and a computed getter isPass that returns true if score ≥ 50.
- In main(), demonstrate updating the score multiple times and printing results. */

class Grade {
  double _score = 0.0;

  set score(double score) {
    if (score >= 0 && score <= 100) {
      this._score = score;
    } else
      (print('Invalid score'));
  }

  double get score => _score;
  bool get isPass => _score >= 50;
}

void main() {
  Grade grade = Grade();
  grade.score = 40;
  print(grade.score);
  print(grade.isPass);

  grade.score = 50;
  print(grade.score);
  print(grade.isPass);

  grade.score = 100;
  print(grade.score);
  print(grade.isPass);

  grade.score = 150;
}
