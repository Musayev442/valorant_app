import 'package:flutter/material.dart';

class SectionMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 20),
                  child: HomeDivider(),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "YOUR MAPS",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0F1923)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "FIGHT AROUND THE WORLD",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF383E3A)),
                  ),
                ),
                const Text(
                  "Each map is a playground to showcase your creative thinking. Purpose-built for team strategies, spectacular plays, and clutch moments. Make the play others will imitate for years to come.",
                  style: TextStyle(color: Color(0xFF768079), fontSize: 16),
                ),
              ],
            ),
          ),
        ),
        Stack(children: [
          Image.asset("assets/images/map.png"),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              height: 200,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(color: Colors.black),
                ),
              ),
            ),
          ),
        ])
      ],
    );
  }
}

Divider HomeDivider() {
  return const Divider(
    thickness: 1,
    color: Colors.black,
  );
}

Column Map() {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    const Text(
      "YOUR MAPS",
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Color(0xFF0F1923),
      ),
    ),
    Stack(
      children: [
        Image.asset("assets/images/map.png"),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            height: 200,
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(color: Colors.black),
              ),
            ),
          ),
        ),
        const Text(
          "FIGHT AROUND THE WORLD",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF383E3A)),
        ),
        const Text(
          "Each map is a playground to showcase your creative thinking. Purpose-built for team strategies, spectacular plays, and clutch moments. Make the play others will imitate for years to come.",
          style: TextStyle(color: Color(0xFF768079), fontSize: 16),
        )
      ],
    ),
  ]);
}
