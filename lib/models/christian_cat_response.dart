// To parse this JSON data, do
//
//     final christianCatResponse = christianCatResponseFromJson(jsonString);

import 'dart:convert';

List<ChristianCatResponse> christianCatResponseFromJson(String str) => List<ChristianCatResponse>.from(json.decode(str).map((x) => ChristianCatResponse.fromJson(x)));

String christianCatResponseToJson(List<ChristianCatResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ChristianCatResponse {
    ChristianCatResponse({
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

    factory ChristianCatResponse.fromJson(Map<String, dynamic> json) => ChristianCatResponse(
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
