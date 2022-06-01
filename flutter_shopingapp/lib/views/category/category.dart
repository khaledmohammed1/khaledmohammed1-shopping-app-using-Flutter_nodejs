import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/category_item/category_item.dart';
import '../../controllers/categoryController.dart';

class AllCategory extends StatefulWidget {


  const AllCategory({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CategoryState createState() => _CategoryState();
}
class _CategoryState extends State<AllCategory> {
  CategoryController categoryController = Get.put(CategoryController());
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () => {
              Get.back(),
            },
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const Padding(
              padding:  EdgeInsets.only(bottom: 30, left: 4, top: 15),
              child:  Text(
                " All Category",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GridView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 140,
                childAspectRatio: 1 / 1.25,
                crossAxisSpacing: 6,
                mainAxisSpacing: 6,
              ),
              children: categoryController.categoryList!
                  .map((categoryItem) => Category_Item(
                      width1: 100,
                      height1: 120,
                      width2: 80,
                      height2: 90,
                      id: categoryItem.id,
                      title: categoryItem.categoryName,
                      imageUrl: categoryItem.categoryImage))
                  .toList(),
            ),
          ],
        ));
  }
}
