import 'package:flutter/material.dart';
import 'package:ui/ui.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final Color color;
  final TextAlign textAlign;
  final TextOverflow? textOverflow;

  const AppText._internal(
    this.text, {
    required this.textStyle,
    required this.color,
    super.key,
    this.textAlign = TextAlign.start,
    this.textOverflow,
  });

  factory AppText.labelBigEmphasis(
    String text, {
    required BuildContext context,
    Key? key,
    Color? color,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
  }) {
    final theme = Theme.of(context);
    return AppText._internal(
      text,
      key: key,
      textStyle: theme.appTexts.labelBigEmphasis,
      color: color ?? theme.appColors.textDefault,
      textAlign: textAlign ?? TextAlign.start,
      textOverflow: textOverflow,
    );
  }

  factory AppText.labelDefaultEmphasis(
    String text, {
    required BuildContext context,
    Key? key,
    Color? color,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
  }) {
    final theme = Theme.of(context);
    return AppText._internal(
      text,
      key: key,
      textStyle: theme.appTexts.labelDefaultEmphasis,
      color: color ?? theme.appColors.textDefault,
      textAlign: textAlign ?? TextAlign.start,
      textOverflow: textOverflow,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: textStyle.copyWith(color: color),
    );
  }
}
