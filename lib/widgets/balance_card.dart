import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [Color(0xFF5F5CFF), Color(0xFF3F3DCC)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Total Balance",
              style: TextStyle(color: Colors.white70)),

          SizedBox(height: 10),

          Text("8,945.32TK",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold)),

          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Savings: 5,500TK",
                  style: TextStyle(color: Colors.white70)),
              Text("Last 30 days: +\$300 →",
                  style: TextStyle(color: Colors.white70)),
            ],
          )
        ],
      ),
    );
  }
}