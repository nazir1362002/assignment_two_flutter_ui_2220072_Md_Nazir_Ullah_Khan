import 'package:flutter/material.dart';
import '../widgets/spending_bar.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: const [
            Text("Monthly Spending Report",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),

            SizedBox(height: 20),

            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text("-\$1270.00",
                    style: TextStyle(fontSize: 24, color: Colors.red)),
              ),
            ),

            SizedBox(height: 20),

            SpendingBar("Food & Drink", 0.35, Colors.red),
            SpendingBar("Shopping", 0.25, Colors.blue),
            SpendingBar("Housing", 0.22, Colors.orange),
          ],
        ),
      ),
    );
  }
}