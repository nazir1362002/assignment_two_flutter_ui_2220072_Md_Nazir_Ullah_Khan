import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String amount;
  final bool isIncome;

  const TransactionTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.isIncome,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.grey[200],
          child: Icon(
            isIncome ? Icons.attach_money : Icons.shopping_cart,
            color: Colors.black54,
          ),
        ),
        title: Text(title,
            style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: Text(
          amount,
          style: TextStyle(
            color: isIncome ? Colors.green : Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}