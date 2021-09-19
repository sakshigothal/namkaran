// To parse this JSON data, do
//
//     final userData = userDataFromJson(jsonString);

import 'dart:convert';

UserData userDataFromJson(String str) => UserData.fromJson(json.decode(str));

String userDataToJson(UserData data) => json.encode(data.toJson());

class UserData {
  UserData({
    required this.responseCode,
    required this.responseMessage,
    required this.items,
  });

  String responseCode;
  String responseMessage;
  List<Item> items;

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        responseCode: json["response_code"],
        responseMessage: json["response_message"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "response_code": responseCode,
        "response_message": responseMessage,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
      };
}

class Item {
  Item({
    required this.username,
    required this.age,
  });

  String username;
  int age;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        username: json["username"],
        age: json["age"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "age": age,
      };
}
