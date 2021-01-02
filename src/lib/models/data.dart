// To parse this JSON data, do
//
//     final data = dataFromJson(jsonString);

import 'dart:convert';

List<Data> dataFromJson(String str) =>
    List<Data>.from(json.decode(str).map((x) => Data.fromJson(x)));

String dataToJson(List<Data> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Data {
  Data({
    this.nameTh,
    this.nameEn,
    this.images,
    this.detail1,
    this.detail2,
  });

  String nameTh;
  String nameEn;
  Images images;
  String detail1;
  String detail2;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        nameTh: json["name_th"] == null ? null : json["name_th"],
        nameEn: json["name_en"] == null ? null : json["name_en"],
        images: json["images"] == null ? null : Images.fromJson(json["images"]),
        detail1: json["detail_1"] == null ? null : json["detail_1"],
        detail2: json["detail_2"] == null ? null : json["detail_2"],
      );

  Map<String, dynamic> toJson() => {
        "name_th": nameTh == null ? null : nameTh,
        "name_en": nameEn == null ? null : nameEn,
        "images": images == null ? null : images.toJson(),
        "detail_1": detail1 == null ? null : detail1,
        "detail_2": detail2 == null ? null : detail2,
      };
}

class Images {
  Images({
    this.image1,
    this.image2,
    this.image3,
    this.image4,
    this.image5,
  });

  String image1;
  String image2;
  String image3;
  String image4;
  String image5;

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        image1: json["image_1"] == null ? null : json["image_1"],
        image2: json["image_2"] == null ? null : json["image_2"],
        image3: json["image_3"] == null ? null : json["image_3"],
        image4: json["image_4"] == null ? null : json["image_4"],
        image5: json["image_5"] == null ? null : json["image_5"],
      );

  Map<String, dynamic> toJson() => {
        "image_1": image1 == null ? null : image1,
        "image_2": image2 == null ? null : image2,
        "image_3": image3 == null ? null : image3,
        "image_4": image4 == null ? null : image4,
        "image_5": image5 == null ? null : image5,
      };
}
