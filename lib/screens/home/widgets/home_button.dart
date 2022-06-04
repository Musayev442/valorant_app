import 'package:flutter/material.dart';

final Uri _url = Uri.parse('https://flutter.dev');

class HomeButton extends StatelessWidget {
  const HomeButton(
    this.buttonBgColor,
    this.buttonTextColor,
    this.buttonBorderColor,
    this.buttonText,
  );

  final buttonBgColor;
  final buttonTextColor;
  final buttonBorderColor;
  final buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: buttonBorderColor),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: buttonBgColor,
            onPrimary: Colors.white,
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            minimumSize: const Size(150, 45), //////// HERE
          ),
          onPressed: () {},
          child: Text(
            buttonText,
            style: TextStyle(
                color: buttonTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
        ),
      ),
    );
  }
}
