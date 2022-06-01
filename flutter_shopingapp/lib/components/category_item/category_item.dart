import 'package:flutter/material.dart';
// ignore: camel_case_types
class Category_Item extends StatelessWidget {
  const Category_Item({Key? key,required this.id, required this.title, required this.imageUrl, required this.width1, required this.height1, required this.width2, required this.height2}) : super(key: key);
  final String id;
  final String title;
  final double width1;
  final double height1;
  final double width2;
  final double height2;
  final String imageUrl;



  @override
  Widget build(BuildContext context) {

      return SizedBox(
        width: width1,
        height: height1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(16),
              ),
              width: width2,
              height: height2,
              child: Image(image: NetworkImage(imageUrl), fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 6,),
             Text(title,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
          ],
        ),
    );
  }
}


