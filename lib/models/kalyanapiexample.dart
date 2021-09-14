// To parse this JSON data, do
//
//     final kalyanApiExample = kalyanApiExampleFromJson(jsonString);

import 'dart:convert';

KalyanApiExample kalyanApiExampleFromJson(String str) =>
    KalyanApiExample.fromJson(json.decode(str));

String kalyanApiExampleToJson(KalyanApiExample data) =>
    json.encode(data.toJson());

class KalyanApiExample {
  KalyanApiExample({
    this.responseCode,
    this.responseMessage,
    required this.productOfMonthListing,
    required this.lastMonthWinner,
    required this.brand,
    required this.brandListing,
  });

  String? responseCode;
  String? responseMessage;
  List<ProductOfMonthListing> productOfMonthListing;
  List<LastMonthWinner> lastMonthWinner;
  Brand brand;
  List<Brand> brandListing;

  factory KalyanApiExample.fromJson(Map<String, dynamic> json) =>
      KalyanApiExample(
        responseCode: json["responseCode"],
        responseMessage: json["responseMessage"],
        productOfMonthListing: List<ProductOfMonthListing>.from(
            json["product_of_month_listing"]
                .map((x) => ProductOfMonthListing.fromJson(x))),
        lastMonthWinner: List<LastMonthWinner>.from(
            json["last_month_winner"].map((x) => LastMonthWinner.fromJson(x))),
        brand: Brand.fromJson(json["brand"]),
        brandListing: List<Brand>.from(
            json["brand_listing"].map((x) => Brand.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "responseCode": responseCode,
        "responseMessage": responseMessage,
        "product_of_month_listing":
            List<dynamic>.from(productOfMonthListing.map((x) => x.toJson())),
        "last_month_winner":
            List<dynamic>.from(lastMonthWinner.map((x) => x.toJson())),
        "brand": brand.toJson(),
        "brand_listing":
            List<dynamic>.from(brandListing.map((x) => x.toJson())),
      };
}

class Brand {
  Brand({
    this.brandId,
    this.brandName,
    this.brandImagePath,
    this.brandDescription,
  });

  String? brandId;
  String? brandName;
  String? brandImagePath;
  String? brandDescription;

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        brandId: json["brand_id"],
        brandName: json["brand_name"],
        brandImagePath: json["brand_image_path"],
        brandDescription: json["brand_description"] == null
            ? null
            : json["brand_description"],
      );

  Map<String, dynamic> toJson() => {
        "brand_id": brandId,
        "brand_name": brandName,
        "brand_image_path": brandImagePath,
        "brand_description": brandDescription == null ? null : brandDescription,
      };
}

class LastMonthWinner {
  LastMonthWinner({
    this.userImage,
    this.userName,
    this.userCity,
  });

  String? userImage;
  String? userName;
  dynamic? userCity;

  factory LastMonthWinner.fromJson(Map<String, dynamic> json) =>
      LastMonthWinner(
        userImage: json["user_image"],
        userName: json["user_name"],
        userCity: json["user_city"],
      );

  Map<String, dynamic> toJson() => {
        "user_image": userImage,
        "user_name": userName,
        "user_city": userCity,
      };
}

class ProductOfMonthListing {
  ProductOfMonthListing({
    this.title,
    this.productName,
    this.productImage,
    this.brandName,
    this.brandLogoPath,
    this.productId,
    this.fromDate,
    this.toDate,
    this.contestFlag,
    this.cityName,
    this.isCurrentPom,
    this.redirectUrl,
    this.aboutUs,
    this.isFav,
    this.type,
  });

  String? title;
  String? productName;
  String? productImage;
  String? brandName;
  String? brandLogoPath;
  String? productId;
  String? fromDate;
  String? toDate;
  String? contestFlag;
  String? cityName;
  String? isCurrentPom;
  String? redirectUrl;
  String? aboutUs;
  String? isFav;
  String? type;

  factory ProductOfMonthListing.fromJson(Map<String, dynamic> json) =>
      ProductOfMonthListing(
        title: json["title"],
        productName: json["product_name"],
        productImage: json["product_image"],
        brandName: json["brand_name"],
        brandLogoPath: json["brand_logo_path"],
        productId: json["product_id"],
        fromDate: json["from_date"],
        toDate: json["to_date"],
        contestFlag: json["contest_flag"],
        cityName: json["city_name"],
        isCurrentPom: json["is_current_pom"],
        redirectUrl: json["redirect_url"],
        aboutUs: json["about_us"],
        isFav: json["is_fav"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "product_name": productName,
        "product_image": productImage,
        "brand_name": brandName,
        "brand_logo_path": brandLogoPath,
        "product_id": productId,
        "from_date": fromDate,
        "to_date": toDate,
        "contest_flag": contestFlag,
        "city_name": cityName,
        "is_current_pom": isCurrentPom,
        "redirect_url": redirectUrl,
        "about_us": aboutUs,
        "is_fav": isFav,
        "type": type,
      };
}
