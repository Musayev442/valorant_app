import 'package:flutter/material.dart';
import 'package:valorant_app/screens/home/widgets/home_button.dart';

class SectionAgent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(color: Colors.white),
            ),
          ),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeDivider(),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 40),
                    child: Text(
                      "YOUR AGENTS",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "CREATIVITY IS YOUR GREATEST WEAPON.",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      "More than guns and bullets, you’ll choose an Agent armed with adaptive, swift, and lethal abilities that create opportunities to let your gunplay shine. No two Agents play alike, just as no two highlight reels will look the same.",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
              AgentImage()
            ],
          ),
        ),
      ),
    );
  }
}

class AgentImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Stack(
        children: const [
          Positioned(
            bottom: 0,
            child: Image(
              image: AssetImage("assets/images/rena.png"),
              width: 250,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image(
              image: AssetImage("assets/images/jet.png"),
              width: 180,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 150),
            child: Center(
              child: HomeButton(
                Color(0xFFECE8E1),
                Color(0xFF0f1923),
                Color(0xFFECE8E1),
                "VIEW ALL AGENTS",
              ),
            ),
          )
        ],
      ),
    );
  }
}

Container HomeDivider() {
  return Container(
    padding: const EdgeInsets.only(top: 50, bottom: 50),
    child: const Divider(
      thickness: 1,
      color: Colors.white,
    ),
  );
}
