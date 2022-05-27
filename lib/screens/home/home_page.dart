import 'package:flutter/material.dart';

import '../../models/agent.dart';
import '../../models/services.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<Agent> futureAgent;
  Services services = Services();

  @override
  void initState() {
    super.initState();
    futureAgent = services.getAgent();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
        future: futureAgent,
        builder: (BuildContext context, AsyncSnapshot<Agent> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: snapshot.data?.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: Text(
                        snapshot.data?.data[index].abilities[0].displayName),
                  );
                });
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
