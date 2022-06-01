import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../product_details/products_details.dart';

// ignore: camel_case_types, must_be_immutable
class Product_Item extends StatelessWidget {
  Product_Item(
      {Key? key,
      required this.id,
      required this.imgPath,
      required this.name,
      required this.price,
      required this.desc})
      : super(key: key);
  final String id;
  final String imgPath;
  final String name;
  final String desc;
  final String price;

  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: Container(
        width: 150,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.red.withOpacity(0.05),
                  spreadRadius: 3.0,
                  blurRadius: 5.0)
            ],
            color: Colors.white),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                isFavorite
                    ? Icon(Icons.favorite,
                        color: Theme.of(context).primaryColor)
                    : Icon(Icons.favorite_border,
                        color: Theme.of(context).primaryColor)
              ]),
            ),
            InkWell(
              onTap: () => Get.to(
                ProductDetail(
                  imgPath: imgPath,
                  id: id,
                  price: price,
                  name: name,
                  desc: desc,
                ),
              ),
              child: Hero(
                tag: imgPath,
                child: Container(
                  height: 75.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    image: DecorationImage(
                        image: NetworkImage(imgPath), fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 4.0),
            Text(
              name,
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 1.5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  price.toString(),
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(width: 3),
                const Text(
                  "EGP",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(height: 1.5),
            Padding(
              padding:
                  const EdgeInsets.only(right: 8, bottom: 6, top: 2, left: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    " Add to cart",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: Theme.of(context).primaryColor),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 24,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
