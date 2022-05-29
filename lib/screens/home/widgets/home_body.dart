import 'package:flutter/material.dart';
import 'package:valorant_app/screens/home/widgets/body_section_agents.dart';
import 'body_section_valorant.dart';

class HomeBody extends StatefulWidget {
  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionValorant(),
        SectionAgent(),
      ],
    );
  }
}
