import 'package:get/get.dart';

import '../api_services.dart';
import '../models/categoryModel.dart';

class CategoryController extends GetxController{
  List<CategoryModel>? categoryList;
  var isDataLoading = false.obs;

  getData() async {
    try{
      isDataLoading(true);
    categoryList = await APIService.getCategories();
    print("CategoryController loaded");
  }catch(e){
      print(e);
    }finally{
      isDataLoading(false);
    }
  }
}