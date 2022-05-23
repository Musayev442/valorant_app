import 'package:flutter/material.dart';

import '../../models/agent.dart';
import '../../models/services.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var agent;
  Services services = Services();

  @override
  void initState() {
    super.initState();
    agent = Services().getAgent() as Future<List<Agent>>;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
        future: agent,
        builder: (BuildContext context, AsyncSnapshot<List<Agent>> snapshot) {
          if (snapshot.hasData) {
            var count = snapshot.data!.length;
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data![index].data[index].uuid),
                );
              },
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
