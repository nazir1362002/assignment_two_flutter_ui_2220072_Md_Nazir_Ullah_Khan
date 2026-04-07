import 'package:flutter/material.dart';

class SpendingBar extends StatelessWidget {
  final String title;
  final double value;
  final Color color;
  final String amount;

  const SpendingBar({
    super.key,
    required this.title,
    required this.value,
    required this.color,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title),
            Text(amount),
          ],
        ),
        const SizedBox(height: 6),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: LinearProgressIndicator(
            value: value,
            minHeight: 8,
            color: color,
            backgroundColor: Colors.grey[300],
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}