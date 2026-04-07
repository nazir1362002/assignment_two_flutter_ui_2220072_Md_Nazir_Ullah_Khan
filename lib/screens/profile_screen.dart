import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Widget infoCard(String title, String value) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(value,
            style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Center(
              child: CircleAvatar(
                radius: 40,
                child: Text("SN", style: TextStyle(fontSize: 24)),
              ),
            ),
            const SizedBox(height: 20),

            infoCard("Name", "Md Nazir Ullah Khan"),
            infoCard("Student ID", "2220072"),
            infoCard("Email", "2220072@iub.edu.bd"),

            const SizedBox(height: 10),

            const Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text("Bio / Story here..."),
              ),
            )
          ],
        ),
      ),
    );
  }
}