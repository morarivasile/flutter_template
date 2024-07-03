import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          color: Colors.redAccent,
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          height: 50,
          color: Colors.blueAccent,
        ),
        Container(
          height: 50,
          color: Colors.yellowAccent,
        ),
      ],
    );
  }
}
