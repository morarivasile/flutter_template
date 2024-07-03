class TestModel {
  final String name;
  final String description;

  TestModel({
    required this.name,
    required this.description,
  });

  String getDetailedDescription() {
    return '$name: $description';
  }
}
