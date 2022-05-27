import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

import 'package:meta/meta.dart';
import 'dart:convert';

void main(List<String> arguments) async {
  // This example uses the Google Books API to search
  // for books about HTTP. For details, see
  // https://developers.google.com/books/docs/overview
  final response =
      await http.get(Uri.parse('https://valorant-api.com/v1/agents/'));

  if (response.statusCode == 200) {
    final jsonResponse = convert.jsonDecode(response.body);
    final itemCount = Agent.fromJson(jsonResponse);
    print('Number of books about HTTP: ${itemCount.data[0].id}.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}

// To parse this JSON data, do
//
//     final agent = agentFromJson(jsonString);

Agent agentFromJson(String str) => Agent.fromJson(json.decode(str));

String agentToJson(Agent data) => json.encode(data.toJson());

class Agent {
  Agent({
    @required this.status,
    @required this.data,
  });

  var status;
  var data;

  factory Agent.fromJson(Map<String, dynamic> json) => Agent(
        status: json["status"],
        data: List<Data>.from(json["data"].map((x) => Data.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Data {
  Data({@required this.id});

  var id;

  factory Data.fromJson(Map<String, dynamic> json) => Data(id: json["uuid"]);

  Map<String, dynamic> toJson() => {"uuid": id};
}
