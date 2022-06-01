import 'package:anim_search_bar/anim_search_bar.dart';
import '../../components/category_item/category_item.dart';
import '../../components/product_item/product_item.dart';
import '../../controllers/categoryController.dart';
import '../../controllers/productController.dart';
import '../category/category.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../product/product.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textController = TextEditingController();
  CategoryController categoryController = Get.put(CategoryController());
  ProductController productController = Get.put(ProductController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [


              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 10, left: 10),
                child: AnimSearchBar(
                  animationDurationInMilli: 500,
                  rtl: true,
                  width: 400,
                  textController: textController,
                  onSuffixTap: () {
                    setState(() {
                      textController.clear();
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    " Category",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: InkWell(
                      onTap: () {
                        Get.to(() => const AllCategory());
                      },
                      child: const Text(
                        "View All",
                        style: TextStyle(
                            color: Color(0xfffe416c),
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Category_Item(
                        width1: 80,
                        height1: 100,
                        width2: 65,
                        height2: 75,
                        id: categoryController.categoryList![0].id,
                        imageUrl: categoryController.categoryList![0].categoryImage,
                        title: categoryController.categoryList![0].categoryName,

                    ),
                    Category_Item(
                      width1: 80,
                      height1: 100,
                      width2: 65,
                      height2: 75,
                      id: categoryController.categoryList![1].id,
                      imageUrl: categoryController.categoryList![1].categoryImage,
                      title: categoryController.categoryList![1].categoryName,
                    ),
                    Category_Item(
                      width1: 80,
                      height1: 100,
                      width2: 65,
                      height2: 75,
                      id: categoryController.categoryList![2].id,
                      imageUrl: categoryController.categoryList![2].categoryImage,
                      title: categoryController.categoryList![2].categoryName,
                    ),
                    Category_Item(
                      width1: 80,
                      height1: 100,
                      width2: 65,
                      height2: 75,
                      id: categoryController.categoryList![3].id,
                      imageUrl: categoryController.categoryList![3].categoryImage,
                      title: categoryController.categoryList![3].categoryName,
                    ),Category_Item(
                      width1: 80,
                      height1: 100,
                      width2: 65,
                      height2: 75,
                      id: categoryController.categoryList![4].id,
                      imageUrl: categoryController.categoryList![4].categoryImage,
                      title: categoryController.categoryList![4].categoryName,
                    ),Category_Item(
                      width1: 80,
                      height1: 100,
                      width2: 65,
                      height2: 75,
                      id: categoryController.categoryList![5].id,
                      imageUrl: categoryController.categoryList![5].categoryImage,
                      title: categoryController.categoryList![5].categoryName,
                    ),Category_Item(
                      width1: 80,
                      height1: 100,
                      width2: 65,
                      height2: 75,
                      id: categoryController.categoryList![6].id,
                      imageUrl: categoryController.categoryList![6].categoryImage,
                      title: categoryController.categoryList![6].categoryName,
                    ),Category_Item(
                      width1: 80,
                      height1: 100,
                      width2: 65,
                      height2: 75,
                      id: categoryController.categoryList![7].id,
                      imageUrl: categoryController.categoryList![7].categoryImage,
                      title: categoryController.categoryList![7].categoryName,
                    ),Category_Item(
                      width1: 80,
                      height1: 100,
                      width2: 65,
                      height2: 75,
                      id: categoryController.categoryList![8].id,
                      imageUrl: categoryController.categoryList![8].categoryImage,
                      title: categoryController.categoryList![8].categoryName,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    " Top Selling",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: InkWell(
                      onTap: () {
                         Get.to(() => const AllProduct());
                      },
                      child: const Text(
                        "View All",
                        style: TextStyle(
                            color: Color(0xfffe416c),
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    Product_Item(
                      price: productController.productList![8].productPrice,
                      id: productController.productList![8].id,
                      name: productController.productList![8].productName,
                      imgPath:
                      productController.productList![8].productImage,
                      desc:
                      productController.productList![8].productDesc
                    ),
                    Product_Item(
                      price: productController.productList![20].productPrice,
                      id: productController.productList![20].id,
                      name: productController.productList![20].productName,
                      imgPath:
                      productController.productList![20].productImage,
                      desc:
                      productController.productList![20].productDesc
                    ),
                    Product_Item(
                      price: productController.productList![9].productPrice,
                      id: productController.productList![9].id,
                      name: productController.productList![9].productName,
                      imgPath:
                      productController.productList![9].productImage,
                      desc:
                      productController.productList![9].productDesc
                    ),
                    Product_Item(
                      price: productController.productList![24].productPrice,
                      id: productController.productList![24].id,
                      name: productController.productList![24].productName,
                      imgPath:
                      productController.productList![24].productImage,
                      desc:
                      productController.productList![24].productDesc
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
