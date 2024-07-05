import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui/src/flutter_view_extended.dart';

class AppDimensionsTheme extends ThemeExtension<AppDimensionsTheme> {
  final double radiusHelpIndication;
  final EdgeInsets paddingHelpIndication;

  AppDimensionsTheme._internal({
    required this.radiusHelpIndication,
    required this.paddingHelpIndication,
  });

  factory AppDimensionsTheme.main(FlutterView flutterView) {
    return AppDimensionsTheme._internal(
      radiusHelpIndication: flutterView.isSmallSmartphone ? 8 : 16,
      paddingHelpIndication: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    );
  }

  @override
  ThemeExtension<AppDimensionsTheme> copyWith() {
    return AppDimensionsTheme._internal(
      radiusHelpIndication: radiusHelpIndication,
      paddingHelpIndication: paddingHelpIndication,
    );
  }

  @override
  ThemeExtension<AppDimensionsTheme> lerp(covariant ThemeExtension<AppDimensionsTheme>? other, double t) {
    return this;
  }
}
