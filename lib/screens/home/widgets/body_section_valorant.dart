import 'package:flutter/material.dart';

import 'home_button.dart';

class SectionValorant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Color(0xff0f1923),
              ),
            ),
          ),
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: Text(
                  "WE ARE VALORANT",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0F1923)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  "DEFY THE LIMITS",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF383E3A)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: Text(
                  "Blend your style and experience on a global, competitive stage. You have 13 rounds to attack and defend your side using sharp gunplay and tactical abilities. And, with one life per-round, you'll need to think faster than your opponent if you want to survive. Take on foes across Competitive and Unranked modes as well as Deathmatch and Spike Rush.",
                  style: TextStyle(color: Color(0xFF768079), fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: Container(
                  alignment: Alignment.center,
                  child: HomeButton(
                    Theme.of(context).primaryColor,
                    Colors.white,
                    const Color(0xffece8e1),
                    "LEARN THE GAME",
                  ),
                ),
              )
            ],
          )),
    );
  }
}
