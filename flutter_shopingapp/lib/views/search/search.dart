import 'package:flutter/material.dart';



class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Search"),
      ),
    );
  }
}
