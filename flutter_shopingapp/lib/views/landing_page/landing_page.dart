import 'package:flutter/material.dart';
import 'package:flutter_shopingapp/views/search/search.dart';
import 'package:get/get.dart';
import '../../components/sp_icon/sp_icon.dart';
import '../../controllers/categoryController.dart';
import '../cart/cart.dart';
import '../favorite/favorite.dart';
import '../home_page/home_page.dart';
import '../profile/profile.dart';


class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  CategoryController categoryController = Get.put(CategoryController());

  @override
  void initState() {
    super.initState();

  }
  int currentIndex = 0;
  List<Widget> pages =  const[ HomePage(), Search(), Cart(), Favorite(),  Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: const Color(0xfffe416c),
        selectedLabelStyle: const TextStyle(fontSize: 13),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SPIcon(
              assetname: "shopping-cart.png",
              index: 0,
              currentIndex: currentIndex,
            ),
            label: "Store",
          ),

          BottomNavigationBarItem(
            icon: SPIcon(
              assetname: "search.png",
              index: 1,
              currentIndex: currentIndex,
            ),
            label: "Search",
          ),BottomNavigationBarItem(
            icon: SPIcon(
              assetname: "bag.png",
              index: 2,
              currentIndex: currentIndex,
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: SPIcon(
              assetname: "heart.png",
              index: 3,
              currentIndex: currentIndex,
            ),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: SPIcon(
              assetname: "profile.png",
              index: 4,
              currentIndex: currentIndex,
            ),
            label: "Profile",
          ),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
