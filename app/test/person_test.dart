import 'package:app/person.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('getDetailedDescription returns the name and age', () {
    final person = Person(name: 'John Doe', age: 30);
    expect(person.getDetailedDescription(), 'John Doe: 30');
  });
}
