import 'package:flutter/material.dart';
import 'package:ui/ui.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText.labelBigEmphasis('Login Page', context: context),
            const SizedBox(height: 16),
            CenteredTextButton.primary(
              label: 'Login',
              onTap: () {},
              context: context,
            ),
            const SizedBox(height: 16),
            CenteredTextButton.secondary(
              label: 'Sign Up',
              onTap: () {},
              context: context,
            ),
          ],
        ),
      ),
    );
  }
}
