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
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
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
                Icon(Icons.notifications),
              ],
            ),
            SizedBox(height: 20),
            Text("Monthly Spending Report",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),

            SizedBox(height: 20),

            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text("1270.00Tk",
                    style: TextStyle(fontSize: 24, color: Colors.red)),
              ),
            ),

            SizedBox(height: 20),
            SpendingBar(title: "Food and Drink", value: 0.35, color:Colors.redAccent, amount:"450TK"),
            SpendingBar(title: "Shopping", value: 0.75, color:Colors.orangeAccent, amount:"320Tk"),
            SpendingBar(title: "Housing", value: 0.50, color:Colors.yellow, amount:"280TK"),
            SpendingBar(title: "Transport", value: 0.20, color:Colors.deepPurpleAccent, amount:"150TK"),
            SpendingBar(title: "Other", value: 0.15, color:Colors.grey, amount:"70TK"),
          ],
        ),
      ),
    );
  }
}