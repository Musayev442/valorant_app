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
  Data({
    this.id,
    this.displayName,
    this.description,
    this.developerName,
    this.displayIcon,
    this.displayIconSmall,
    this.bustPortrait,
    this.fullPortrait,
    this.fullPortraitV2,
    this.killfeedPortrait,
    this.background,
    this.assetPath,
    this.isFullPortraitRightFacing,
    this.isPlayableCharacter,
    this.isAvailableForTest,
    this.isBaseContent,
    this.abilities,
  });

  var id;
  var displayName;
  var description;
  var developerName;
  var displayIcon;
  var displayIconSmall;
  var bustPortrait;
  var fullPortrait;
  var fullPortraitV2;
  var killfeedPortrait;
  var background;
  var assetPath;
  var isFullPortraitRightFacing;
  var isPlayableCharacter;
  var isAvailableForTest;
  var isBaseContent;
  var abilities;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["uuid"],
        displayName: json["displayName"],
        description: json["description"],
        developerName: json["developerName"],
        displayIcon: json["displayIcon"],
        displayIconSmall: json["displayIconSmall"],
        bustPortrait: json["bustPortrait"],
        fullPortrait: json["fullPortrait"],
        fullPortraitV2: json["fullPortraitV2"],
        killfeedPortrait: json["killfeedPortrait"],
        background: json["background"],
        assetPath: json["assetPath"],
        isFullPortraitRightFacing: json["isFullPortraitRightFacing"],
        isPlayableCharacter: json["isPlayableCharacter"],
        isAvailableForTest: json["isAvailableForTest"],
        isBaseContent: json["isBaseContent"],
        abilities: List<Ability>.from(
            json["abilities"].map((x) => Ability.fromJson(x))),
      );
}

/*
class Dataa {
  Dataa({
    this.uuid,
    this.displayName,
    this.description,
    this.developerName,
    this.displayIcon,
    this.displayIconSmall,
    this.bustPortrait,
    this.fullPortrait,
    this.fullPortraitV2,
    this.killfeedPortrait,
    this.background,
    this.assetPath,
    this.isFullPortraitRightFacing,
    this.isPlayableCharacter,
    this.isAvailableForTest,
    this.isBaseContent,
    required this.abilities,
  });

  var uuid;
  var displayName;
  var description;
  var developerName;
  var displayIcon;
  var displayIconSmall;
  var bustPortrait;
  var fullPortrait;
  var fullPortraitV2;
  var killfeedPortrait;
  var background;
  var assetPath;
  var isFullPortraitRightFacing;
  var isPlayableCharacter;
  var isAvailableForTest;
  var isBaseContent;
  var abilities;

  factory Dataa.fromJson(Map<String, dynamic> json) => Dataa(
        uuid: json["uuid"],
        displayName: json["displayName"],
        description: json["description"],
        developerName: json["developerName"],
        displayIcon: json["displayIcon"],
        displayIconSmall: json["displayIconSmall"],
        bustPortrait: json["bustPortrait"],
        fullPortrait: json["fullPortrait"],
        fullPortraitV2: json["fullPortraitV2"],
        killfeedPortrait: json["killfeedPortrait"],
        background: json["background"],
        assetPath: json["assetPath"],
        isFullPortraitRightFacing: json["isFullPortraitRightFacing"],
        isPlayableCharacter: json["isPlayableCharacter"],
        isAvailableForTest: json["isAvailableForTest"],
        isBaseContent: json["isBaseContent"],
        abilities: List<Ability>.from(
            json["abilities"].map((x) => Ability.fromJson(x))),
      );
}
*/

class Ability {
  Ability({
    this.slot,
    this.displayName,
    this.description,
    this.displayIcon,
  });

  var slot;
  var displayName;
  var description;
  var displayIcon;

  factory Ability.fromJson(Map<String, dynamic> json) => Ability(
        slot: json["slot"],
        displayName: json["displayName"],
        description: json["description"],
        displayIcon: json["displayIcon"],
      );

  Map<String, dynamic> toJson() => {
        "slot": slot,
        "displayName": displayName,
        "description": description,
        "displayIcon": displayIcon,
      };
}
