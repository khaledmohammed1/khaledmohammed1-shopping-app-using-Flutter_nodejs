import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ProductDetail extends StatelessWidget {
  final String id;
  final String imgPath;
  final String name;
  final String desc;
  final String price;
  bool isFavorite = false;

  ProductDetail({
    Key? key,
    required this.id,
    required this.imgPath,
    required this.name,
    required this.desc,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 25.0),
          Stack(
            children: [
              Hero(
                tag: imgPath,
                child: Container(
                  height: MediaQuery.of(context).size.height * .5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(14),
                      bottomRight: Radius.circular(14),
                    ),
                    image: DecorationImage(
                        image: NetworkImage(imgPath), fit: BoxFit.cover),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(.5),

                  ),
                  width: 30,
                  height: 40,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 26,
                    ),
                    onPressed: () => Get.back(),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  name,
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(children: [
                  isFavorite
                      ? Icon(Icons.favorite,
                          size: 36, color: Theme.of(context).primaryColor)
                      : Icon(Icons.favorite_border,
                          size: 36, color: Theme.of(context).primaryColor)
                ]),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Container(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Center(
                child: Text(desc,
                    style: TextStyle(
                        fontSize: 16.0, color: Colors.black.withOpacity(.5))),
              ),
            ),
          ),
          const SizedBox(height: 40.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      price.toString(),
                      style: const TextStyle(
                        fontSize: 36.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.5),
                      child: Text(
                        "EGP",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width - 170.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Theme.of(context).primaryColor),
                  child: const Center(
                    child: Text(
                      'Add to cart',
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
