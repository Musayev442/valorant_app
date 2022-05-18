import 'package:flutter/material.dart';

import 'screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final String _title = "ValoWorld";

  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          backgroundColor: const Color(0xFFFFFBF5),
          primaryColor: const Color(0xFFFD4556),
          bottomAppBarColor: const Color(0xFFFD4556)),
      debugShowCheckedModeBanner: false,
      title: _title,
      home: const SafeArea(child: Home()),
    );
  }
}
