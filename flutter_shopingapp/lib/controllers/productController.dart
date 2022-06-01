import 'package:flutter_shopingapp/models/productModel.dart';
import 'package:get/get.dart';

import '../api_services.dart';

class ProductController extends GetxController{
  List<ProductModel>? productList;
  var isDataLoading = false.obs;

  getData() async {
    try{
      isDataLoading(true);
      productList = await APIService.getProducts();
      print("ProductController loaded");
    }catch(e){
      print(e);
    }finally{
      isDataLoading(false);
    }
  }
}