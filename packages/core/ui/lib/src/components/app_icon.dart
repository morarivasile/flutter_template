import 'package:flutter/material.dart';
import 'package:ui/src/app_icon_name.dart';
import 'package:ui/ui.dart';

class AppIcon extends StatelessWidget {
  final String name;
  final Color? color;
  final double? size;

  const AppIcon._internal({
    required this.name,
    this.color,
    this.size,
    super.key,
  });

  factory AppIcon.main({
    required AppIconName appIconName,
    required BuildContext context,
    Key? key,
  }) {
    return AppIcon._internal(
      key: key,
      name: appIconName.name,
      color: Theme.of(context).appColors.iconDefault,
      size: 32,
    );
  }

  factory AppIcon.reversed({
    required AppIconName appIconName,
    required BuildContext context,
    Key? key,
  }) {
    return AppIcon._internal(
      key: key,
      name: appIconName.name,
      color: Theme.of(context).appColors.iconDefaultReversed,
      size: 32,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      name,
      color: color,
      width: size,
      height: size,
    );
  }
}
