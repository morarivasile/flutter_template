class Person {
  final String name;
  final int age;

  Person({
    required this.name,
    required this.age,
  });

  String getDetailedDescription() {
    return '$name: $age';
  }

  String getShortDescription() {
    return name;
  }
}
