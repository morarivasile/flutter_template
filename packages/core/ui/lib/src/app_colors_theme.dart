import 'package:flutter/material.dart';

class AppColorsTheme extends ThemeExtension<AppColorsTheme> {
  // reference colors:
  static const _grey = Color(0xFFB0B0B0);
  static const _green = Color(0xFF00C060);
  static const _black = Color(0xFF000000);

  // actual colors used throughout the app:
  final Color backgroundDefault;
  final Color textDefault;

  final Color backgroundActionPrimary;
  final Color backgroundActionPrimaryDisabled;
  final Color backgroundActionSecondary;
  final Color backgroundActionSecondaryDisabled;

  final Color iconDefault;
  final Color iconDefaultReversed;

  // private constructor (use factories below instead):
  const AppColorsTheme._internal({
    required this.backgroundDefault,
    required this.textDefault,
    required this.backgroundActionPrimary,
    required this.backgroundActionPrimaryDisabled,
    required this.backgroundActionSecondary,
    required this.backgroundActionSecondaryDisabled,
    required this.iconDefault,
    required this.iconDefaultReversed,
  });

  // factory for light mode:
  factory AppColorsTheme.light() {
    return const AppColorsTheme._internal(
      backgroundDefault: _grey,
      textDefault: _black,
      backgroundActionPrimary: _green,
      backgroundActionPrimaryDisabled: _grey,
      backgroundActionSecondary: _grey,
      backgroundActionSecondaryDisabled: _grey,
      iconDefault: _black,
      iconDefaultReversed: _grey,
    );
  }

  // factory for dark mode:
  factory AppColorsTheme.dark() {
    return const AppColorsTheme._internal(
      backgroundDefault: _grey,
      textDefault: _black,
      backgroundActionPrimary: _green,
      backgroundActionPrimaryDisabled: _grey,
      backgroundActionSecondary: _grey,
      backgroundActionSecondaryDisabled: _grey,
      iconDefault: _black,
      iconDefaultReversed: _grey,
    );
  }

  @override
  ThemeExtension<AppColorsTheme> copyWith({bool lightMode = true}) {
    return lightMode ? AppColorsTheme.light() : AppColorsTheme.dark();
  }

  @override
  ThemeExtension<AppColorsTheme> lerp(covariant ThemeExtension<AppColorsTheme>? other, double t) {
    return this;
  }
}
