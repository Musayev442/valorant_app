import 'package:flutter/material.dart';
import 'package:valorant_app/screens/category/widgets/agent.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xFF0F1822),
      child: Column(
        children: [
          const Text(
            "Discover",
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          FirstRoute()
        ],
      ),
    );
  }
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Open route'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Agent()),
          );
        },
      ),
    );
  }
}
