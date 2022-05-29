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
            Text("YOUR MAPS"),
            Text("FIGHT AROUND THE WORLD"),
            Text("FIGHT AROUND THE WORLD")
          ],
        ),
      ),
    );
  }
}
