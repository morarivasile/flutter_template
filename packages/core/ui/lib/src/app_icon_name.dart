class AppIconName {
  static const _iconsPath = "assets/icons/";

  final String iconsPath;
  final String name;

  const AppIconName({
    required this.name,
    this.iconsPath = _iconsPath,
  });

  String get path => "$iconsPath$name";
}
