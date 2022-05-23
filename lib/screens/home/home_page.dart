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
    agent = services.getAgent();
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
                  title: Text(snapshot.data![index].id.toString()),
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

class AgentList extends StatelessWidget {
  const AgentList({Key? key, required this.agents}) : super(key: key);
  final agents;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: agents.length,
      itemBuilder: (context, index) {
        return Image.network(agents[index].id);
      },
    );
  }
}
