//https://valorant-api.com/v1/agents

import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

import 'package:meta/meta.dart';
import 'dart:convert';

import 'dart:async';

import 'package:valorant_app/models/agent.dart';

class Services {
  Future<Agent> getAgent() async {
    final response =
        await http.get(Uri.parse('https://valorant-api.com/v1/agents/'));

    if (response.statusCode == 200) {
      return Agent.fromJson(jsonDecode(response.body));
    } else {
      print('Request failed with status: ${response.statusCode}.');
      throw Exception('Failed to load data');
    }
  }
}
