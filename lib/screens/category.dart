import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/category/top_bar.dart';
import '../widgets/category/list_card.dart' as list;
import '../screens/add_cart.dart';

class CategoryPage extends StatelessWidget {
  CategoryPage({Key? key, required this.name, required this.imgURL})
      : super(key: key);

  final String name;
  final String imgURL;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Color(0xFFF5D4C1)),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            height: 118,
            color: Color(0xFFF5D4C1),
            child: TopBar(name: name, imgURL: imgURL),
          ),
          
          listCardsBuilder(),
        ],
      ),
    );
  }

  Widget listCardsBuilder() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
      child: Column(
        children: [
          list.ListCard(name: 'Margherita'),
          SizedBox(height:16),
          list.ListCard(name: 'Tomato'),
          SizedBox(height:16),
          list.ListCard(name: 'Farm Fresh'),
          SizedBox(height:16),
        ],
      ),
    );
  }
}
