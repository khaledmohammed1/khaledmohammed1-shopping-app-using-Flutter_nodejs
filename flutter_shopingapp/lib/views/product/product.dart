import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/product_item/product_item.dart';
import '../../controllers/productController.dart';

class AllProduct extends StatefulWidget {
  const AllProduct({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<AllProduct> {
  ProductController productController = Get.put(ProductController());

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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 30, left: 4, top: 15),
              child: Text(
                " All Products",
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
                maxCrossAxisExtent: 250,
                childAspectRatio: 1 / 1.25,
                // crossAxisSpacing: 2,
                // mainAxisSpacing: .5,
              ),
              children: productController.productList!
                  .map((productItem) => Product_Item(
                  price: productItem.productPrice,
                  id: productItem.id,
                  name: productItem.productName,
                  imgPath:
                  productItem.productImage,
                  desc:
                  productItem.productDesc
              ),
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
