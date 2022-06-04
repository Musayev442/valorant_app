import 'package:flutter/material.dart';

class SectionMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            left: BorderSide(color: Colors.black),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "YOUR MAPS",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0F1923)),
            ),
            Text(
              "FIGHT AROUND THE WORLD",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF383E3A)),
            ),
            Text(
              "Each map is a playground to showcase your creative thinking. Purpose-built for team strategies, spectacular plays, and clutch moments. Make the play others will imitate for years to come.",
              style: TextStyle(color: Color(0xFF768079), fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}

Divider HomeDivider() {
  return const Divider(
    thickness: 1,
    color: Colors.white,
  );
}
