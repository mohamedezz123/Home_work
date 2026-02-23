/* 
3. Unique Visitor Counter
You are building a mobile app that tracks unique visitors per day.
- Each visitor is identified by an ID (an integer).
- During the day, the app receives many repeated IDs (because the same user may open the app
multiple times).
- You need to count how many unique visitors used the app today.
Write code that, given a list of visitor IDs, returns the number of unique visitors. */

class UniqueVisitorCounter {
  Set<int> uniqueVisitors = {};

  void addVisitor(int visitorId) {
    uniqueVisitors.add(visitorId);
  }

  int getUniqueVisitorCount() {
    return uniqueVisitors.length;
  }
}

void main() {
  UniqueVisitorCounter counter = UniqueVisitorCounter();

  List<int> visitorIds = [1, 2, 3, 2, 4, 1, 5];

  for (var id in visitorIds) {
    counter.addVisitor(id);
  }

  print('Number of unique visitors today: ${counter.getUniqueVisitorCount()}');
}
