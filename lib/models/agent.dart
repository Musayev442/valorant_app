class Agent {
  var id;
  Agent({this.id});
  factory Agent.fromJson(Map<String, dynamic> json) => Agent(id: json["uuid"]);

  @override
  String toString() {
    return '{ $id}';
  }
}
