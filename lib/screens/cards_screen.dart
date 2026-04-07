import 'package:flutter/material.dart';
import '../widgets/credit_card_widget.dart';
import '../widgets/action_button.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // 🔹 Header (same as Home/Profile)
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
                        Text(
                          "Md Nazir Ullah Khan",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                const Icon(Icons.notifications),
              ],
            ),

            const SizedBox(height: 20),

            // 🔹 Cards (Swipeable)
            SizedBox(
              height: 200,
              child: PageView(
                children: const [
                  CreditCardWidget(
                    cardNumber: "**** **** **** 1234",
                    name: "Md Nazir Ullah Khan",
                    expiry: "12/26",
                  ),
                  CreditCardWidget(
                    cardNumber: "**** **** **** 5678",
                    name: "Md Nazir Ullah Khan",
                    expiry: "11/25",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // 🔹 Card Actions
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ActionButton(icon: Icons.lock, label: "Freeze"),
                ActionButton(icon: Icons.visibility, label: "Details"),
                ActionButton(icon: Icons.send, label: "Transfer"),
              ],
            ),

            const SizedBox(height: 20),

            // 🔹 Recent Card Activity
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Recent Activity",
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Amazon Purchase"),
                    subtitle: Text("Shopping • Today"),
                    trailing: Text("120.45Tk",
                        style: TextStyle(color: Colors.red)),
                  ),
                  ListTile(
                    leading: Icon(Icons.fastfood),
                    title: Text("Food Order"),
                    subtitle: Text("Food • Yesterday"),
                    trailing: Text("-25.00Tk",
                        style: TextStyle(color: Colors.red)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}