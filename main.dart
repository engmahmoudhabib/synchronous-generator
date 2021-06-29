//Synchronous generator

void main() {
  IterableClass ic = IterableClass([
    1,
    'hi',
    34,
    '133hh',
  ]);

  ic.forEach((element) => print(element));

  ic.forEach(print);

  print(generateNumbersSync(5, 88).toList());
}

Iterable<int> generateNumbersSync(int start, int end) sync* {
  for (int i = start; i <= end; i++) {
    yield i;
  }
}

class IterableClass extends Iterable<dynamic> {
  List<dynamic> iterating;
  IterableClass(this.iterating);

  @override
  Iterator<dynamic> get iterator => iterating.iterator;
}
