import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:ui/ui.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Theme.of(context).copyWith(
        extensions: [
          AppDimensionsTheme.main(View.of(context)),
          AppColorsTheme.dark(),
          AppTextsTheme.main(),
        ],
      ),
      home: const LoginPage(),
    );
  }
}
