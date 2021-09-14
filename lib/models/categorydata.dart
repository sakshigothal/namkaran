// To parse this JSON data, do
//
//     final categoryData = categoryDataFromJson(jsonString);

import 'dart:convert';

List<CategoryData> categoryDataFromJson(String str) => List<CategoryData>.from(
    json.decode(str).map((x) => CategoryData.fromJson(x)));

String categoryDataToJson(List<CategoryData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CategoryData {
  CategoryData({
    required this.id,
    required this.catName,
  });

  String id;
  String catName;

  factory CategoryData.fromJson(Map<String, dynamic> json) => CategoryData(
        id: json["id"],
        catName: json["cat_name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "cat_name": catName,
      };
}
