import 'package:flutter/material.dart';

class SpendingBar extends StatelessWidget {
  final String title;
  final double value;
  final Color color;

  const SpendingBar(this.title, this.value, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        const SizedBox(height: 5),
        LinearProgressIndicator(
          value: value,
          color: color,
          backgroundColor: Colors.grey[300],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}