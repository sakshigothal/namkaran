// To parse this JSON data, do
//
//     final hinduCatResponse = hinduCatResponseFromJson(jsonString);

import 'dart:convert';

List<HinduCatResponse> hinduCatResponseFromJson(String str) => List<HinduCatResponse>.from(json.decode(str).map((x) => HinduCatResponse.fromJson(x)));

String hinduCatResponseToJson(List<HinduCatResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HinduCatResponse {
    HinduCatResponse({
        required this.id,
        required this.categoryId,
        required this.name,
        required this.meaning,
        required this.gender,
    });

    String id;
    String categoryId;
    String name;
    String meaning;
    String gender;

    factory HinduCatResponse.fromJson(Map<String, dynamic> json) => HinduCatResponse(
        id: json["id"],
        categoryId: json["category_id"],
        name: json["name"],
        meaning: json["meaning"],
        gender: json["gender"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "category_id": categoryId,
        "name": name,
        "meaning": meaning,
        "gender": gender,
    };
}
