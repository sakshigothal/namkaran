// To parse this JSON data, do
//
//     final muslimCatResponse = muslimCatResponseFromJson(jsonString);

import 'dart:convert';

List<MuslimCatResponse> muslimCatResponseFromJson(String str) => List<MuslimCatResponse>.from(json.decode(str).map((x) => MuslimCatResponse.fromJson(x)));

String muslimCatResponseToJson(List<MuslimCatResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MuslimCatResponse {
    MuslimCatResponse({
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

    factory MuslimCatResponse.fromJson(Map<String, dynamic> json) => MuslimCatResponse(
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
