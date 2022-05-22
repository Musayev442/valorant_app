//https://valorant-api.com/v1/agents
import 'package:valorant_app/models/agent.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'dart:async';

class Services {
  Future<List<Agent>> getAgent() async {
    var url = Uri.parse('https://valorant-api.com/v1/agents');
    var response = await http.get(url);
    print(response.body);

    if (response.statusCode == 200) {
      var data = (convert.jsonDecode(response.body) as List);
      var dataObj = data.map((json) => Agent.fromJson(json)).toList();
      return dataObj;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
