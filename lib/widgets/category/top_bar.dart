import 'package:flutter/material.dart';
import '../back_button.dart' as back;
import 'item_name.dart';
import '../cart_button.dart';

class TopBar extends StatelessWidget {
  TopBar({Key? key, required this.name,required this.imgURL})
      : super(key: key);

  final String name, imgURL;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, bottom: 12, right: 18, top: 51),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              back.BackButton(color: Colors.white),
              SizedBox(width: 16),
              Center(child: ItemName(name: name, imgURL: imgURL)),
            ],
          ),
          CartButton(
            color: Color(0xFFFFC532),
          )
        ],
      ),
    );
  }
}
