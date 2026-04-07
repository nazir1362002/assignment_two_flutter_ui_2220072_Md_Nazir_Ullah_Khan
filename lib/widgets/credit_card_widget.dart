import 'package:flutter/material.dart';

class CreditCardWidget extends StatelessWidget {
  final String cardNumber;
  final String name;
  final String expiry;

  const CreditCardWidget({
    super.key,
    required this.cardNumber,
    required this.name,
    required this.expiry,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),

        // 🔥 Gradient like your Figma design
        gradient: const LinearGradient(
          colors: [Color(0xFF5F5CFF), Color(0xFF3F3DCC)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(),
            blurRadius: 15,
            offset: const Offset(0, 8),
          )
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 🔹 Top Row (Card Type + Icon)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "VISA",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.credit_card, color: Colors.white),
            ],
          ),

          // 🔹 Card Number
          Text(
            cardNumber,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              letterSpacing: 2,
            ),
          ),

          // 🔹 Bottom Row (Name + Expiry)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                expiry,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}