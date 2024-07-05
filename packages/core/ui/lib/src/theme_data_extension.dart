import 'package:flutter/material.dart';
import 'package:ui/src/app_colors_theme.dart';
import 'package:ui/src/app_dimensions_theme.dart';
import 'package:ui/src/app_texts_theme.dart';

extension ThemeDataExtension on ThemeData {
  AppDimensionsTheme get appDimensions => extension<AppDimensionsTheme>()!;
  AppColorsTheme get appColors => extension<AppColorsTheme>()!;
  AppTextsTheme get appTexts => extension<AppTextsTheme>()!;
}
