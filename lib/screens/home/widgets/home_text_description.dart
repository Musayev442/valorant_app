import 'package:flutter/material.dart';

class HomeTextDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "A 5v5 character-based tactical shooter",
      style: TextStyle(
          color: Theme.of(context).backgroundColor,
          fontWeight: FontWeight.bold),
    );
  }
}
