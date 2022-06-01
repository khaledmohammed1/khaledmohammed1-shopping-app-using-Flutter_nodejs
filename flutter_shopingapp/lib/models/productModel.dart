import 'dart:convert';

List<ProductModel> productModelFromJson(String str) => List<ProductModel>.from(json.decode(str).map((x) => ProductModel.fromJson(x)));

String productModelToJson(List<ProductModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductModel {
  ProductModel({
    required this.id,
    required this.productName,
    required  this.productDesc,
    required this.productPrice,
    required this.productImage,
    required this.category,

  });

  final String id;
  final String productName;
  final String productDesc;
  final String productPrice;
  final String productImage;
  final String category;


  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    id: json["_id"],
    productName: json["ProductName"],
    productDesc: json["ProductDesc"],
    productPrice: json["ProductPrice"],
    productImage: json["ProductImage"],
    category: json["category"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "ProductName": productName,
    "ProductDesc": productDesc,
    "ProductPrice": productPrice,
    "ProductImage": productImage,
    "category": category,
  };
}
