import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/ui.dart';

class CenteredTextButton extends StatelessWidget {
  final String label;
  final bool isPrimary;
  final bool isEnabled;
  final void Function()? onTap;
  final Color color;
  final Color disabledColor;

  const CenteredTextButton._internal({
    required this.label,
    required this.isPrimary,
    required this.isEnabled,
    required this.onTap,
    required this.color,
    required this.disabledColor,
    super.key,
  });

  factory CenteredTextButton.primary({
    required String label,
    required BuildContext context,
    void Function()? onTap,
    bool isEnabled = true,
    Key? key,
  }) {
    final theme = Theme.of(context);

    return CenteredTextButton._internal(
      key: key,
      label: label,
      isPrimary: true,
      isEnabled: isEnabled,
      onTap: onTap,
      color: theme.appColors.backgroundActionPrimary,
      disabledColor: theme.appColors.backgroundActionPrimaryDisabled,
    );
  }

  factory CenteredTextButton.secondary({
    required String label,
    required BuildContext context,
    void Function()? onTap,
    bool isEnabled = true,
    Key? key,
  }) {
    final theme = Theme.of(context);

    return CenteredTextButton._internal(
      key: key,
      label: label,
      isPrimary: false,
      isEnabled: isEnabled,
      onTap: onTap,
      color: theme.appColors.backgroundDefault,
      disabledColor: theme.appColors.backgroundDefault,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CupertinoButton(
      onPressed: isEnabled ? onTap : null,
      color: isEnabled ? color : disabledColor,
      child: Text(
        label,
        style: theme.appTexts.labelDefaultEmphasis.copyWith(
          color: isEnabled ? theme.appColors.textDefault : theme.appColors.textDefault.withOpacity(0.5),
        ),
      ),
    );
  }
}
