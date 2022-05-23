//https://valorant-api.com/v1/agents
//import 'dart:convert' as convert;

import 'dart:convert';

import 'package:valorant_app/models/agent.dart';

import 'package:http/http.dart' as http;
import 'dart:async';

class Services {
  Future<List<Data>> getAgent() async {
    var url = Uri.parse('https://valorant-api.com/v1/agents');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var dataObj = data.map((json) => Data.fromJson(json)).toList();
      print(dataObj);

      return dataObj;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
