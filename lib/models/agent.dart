import 'dart:convert';

Agent agentFromJson(String str) => Agent.fromJson(json.decode(str));

String agentToJson(Agent data) => json.encode(data.toJson());

class Agent {
  Agent({
    this.status,
    this.data,
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
  Data({this.id});

  var id;

  factory Data.fromJson(Map<String, dynamic> json) => Data(id: json["uuid"]);

  Map<String, dynamic> toJson() => {"uuid": id};
}
