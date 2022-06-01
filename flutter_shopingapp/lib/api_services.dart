import 'dart:convert' as convert;

import 'models/categoryModel.dart';
import 'package:http/http.dart' as http;

import '../../config.dart';
import 'models/productModel.dart';

class APIService {
  static var client = http.Client();

  static Future<List<CategoryModel>?> getCategories() async {

    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
    };

    var url = Uri.http(
      Config.apiURL,
      Config.categoryURL,
    );

    var response = await client.get(
      url,
      headers: requestHeaders,
    );
    if (response.statusCode == 200) {
       var json = response.body;
       return categoryModelFromJson(json);
    }
    return null;
  }
  static Future<List<ProductModel>?> getProducts() async {

    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
    };

    var url = Uri.http(
      Config.apiURL,
      Config.productURL,
    );

    var response = await client.get(
      url,
      headers: requestHeaders,
    );
    if (response.statusCode == 200) {
       var json = response.body;
       return productModelFromJson(json);
    }
    return null;
  }

}