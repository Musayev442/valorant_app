import 'package:flutter/material.dart';

class SectionAgent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(color: Colors.white),
            ),
          ),
          child: Container(
            alignment: Alignment.topLeft,
            width: double.infinity,
            margin: EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Text("YOUR AGENTS"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Container HomeDivider() {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: Divider(
        thickness: 1,
        color: Color(0xff0F1923),
      ),
    ),
  );
}
