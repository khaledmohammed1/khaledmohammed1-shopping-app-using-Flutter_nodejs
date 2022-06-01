import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/categoryController.dart';

import 'controllers/productController.dart';
import 'views/landing_page/landing_page.dart';

void main() async{

  CategoryController categoryController = Get.put(CategoryController());
  ProductController productController = Get.put(ProductController());
  await categoryController.getData();
  await productController.getData();

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xfffe416c),
      ),
      debugShowCheckedModeBanner: false,
      home: const LandingPage(
      ),
    );
  }
}
