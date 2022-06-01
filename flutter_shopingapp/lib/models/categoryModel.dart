import 'dart:convert';

List<CategoryModel> categoryModelFromJson(String str) => List<CategoryModel>.from(json.decode(str).map((x) => CategoryModel.fromJson(x)));

String categoryModelToJson(List<CategoryModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));


class CategoryModel {

  CategoryModel({
    required this.id,
    required this.categoryName,
    required  this.categoryImage,
  });
   final String id;
  final String categoryName;
  final String categoryImage;


  factory CategoryModel.fromJson(Map<String, dynamic> json)  => CategoryModel (
    id : json['_id'],
    categoryName : json['categoryName'],
    categoryImage : json['categoryImage'],
    );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "categoryName": categoryName,
    "categoryImage": categoryImage,
  };
}
