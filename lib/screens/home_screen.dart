import 'package:flutter/material.dart';
import '../widgets/balance_card.dart';
import '../widgets/action_button.dart';
import '../widgets/transaction_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    CircleAvatar(child: Text("S")),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Welcome back,"),
                        Text("Md Nazir Ullah Khan",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
                const Icon(Icons.notifications),
              ],
            ),

            const SizedBox(height: 20),

            const BalanceCard(),

            const SizedBox(height: 20),

            // Actions
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ActionButton(icon: Icons.send, label: "Transfer"),
                ActionButton(icon: Icons.receipt, label: "Pay Bills"),
                ActionButton(icon: Icons.trending_up, label: "Invest"),
              ],
            ),

            const SizedBox(height: 20),

            // Transactions
            const Text("Recent Transactions",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

            const SizedBox(height: 10),

            const TransactionTile(
              title: "Netflix Subscription",
              subtitle: "Entertainment • Today",
              amount: "190.99TK",
              isIncome: false,
            ),
            const TransactionTile(
              title: "Salary Deposit",
              subtitle: "Income • Yesterday",
              amount: "3500TK",
              isIncome: true,
            ),
            const TransactionTile(
              title: "Coffe Shop",
              subtitle: "Food and Drink • Today",
              amount: "500TK",
              isIncome: true,
            ),
            const TransactionTile(
              title: "Grosery Store",
              subtitle: "Shopping • Yesterday",
              amount: "1500TK",
              isIncome: true,
            ),
          ],
        ),
      ),
    );
  }
}