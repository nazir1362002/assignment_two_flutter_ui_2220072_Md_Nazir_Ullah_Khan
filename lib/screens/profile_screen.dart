import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Widget infoCard(String title, String value) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
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
                radius: 50,
                backgroundImage: AssetImage("lib/assets/profilepic.jpg"),
              ),
            ),
            const SizedBox(height: 20),

            infoCard("Name", "Md Nazir Ullah Khan"),
            infoCard("Student ID", "2220072"),
            infoCard("Email", "2220072@iub.edu.bd"),

            const SizedBox(height: 10),

            const Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "I am Md Nazir Ullah Khan, a passionate Computer Science student at IUB. "
                  "I enjoy building mobile applications using Flutter and solving real-world problems through technology. "
                  "Currently, I am working on projects like FastAid, a first responder network system. "
                  "I am always eager to learn new skills and improve my development expertise.",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
