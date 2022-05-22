import 'package:flutter/material.dart';

import '../../models/agent.dart';
import '../../models/services.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Agent>> agent;
  Services services = Services();

  @override
  void initState() {
    super.initState();
    print("hhh------hereer");
    agent = services.getAgent();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FutureBuilder(
        future: agent,
        builder: (BuildContext context, AsyncSnapshot<List<Agent>> snapshot) {
          if (snapshot.hasData) {
            return const Text(" is here");
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
