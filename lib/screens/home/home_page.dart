import 'package:flutter/material.dart';

import '../../models/agent.dart';
import '../../models/services.dart';
import 'widgets/home_body.dart';
import 'widgets/home_header.dart';

//https://assets.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt9037484fa766c7b8/61d90887dea73a236fc56d82/Disruption_VAL_MOBILE_768x490.mp4
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
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeHeader(),
          HomeDivider(),
          HomeBody(),
        ],
      ),
    );
  }

  Container HomeDivider() {
    return Container(
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Divider(
          thickness: 1,
          color: Color(0xff0F1923),
        ),
      ),
    );
  }

  Center AgentData() {
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
                        (snapshot.data?.data[index].voiceLine.minDuration)
                            .toString()),
                  );
                });
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
