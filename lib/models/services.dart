//https://valorant-api.com/v1/agents
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:valorant_app/models/agent.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'dart:async';

class Services {
  Future<List<Agent>> getAgent() async {
    http.Client client = http.Client();
    final response = await client
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

    // Use the compute function to run parsePhotos in a separate isolate.

    return compute(parseAgents, response.body);
  }

  List<Agent> parseAgents(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

    return parsed.map<Agent>((json) => Agent.fromJson(json)).toList();
  }
}
