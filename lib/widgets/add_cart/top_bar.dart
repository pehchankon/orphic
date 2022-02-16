import 'package:flutter/material.dart';
import '../back_button.dart' as back;
import '../cart_button.dart';

class TopBar extends StatelessWidget {
  TopBar({Key? key})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, bottom: 12, right: 18, top: 51),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          back.BackButton(color: Color(0xFFF8F8FA)),
          CartButton(
            color: Color(0xFFFFC532),
          )
        ],
      ),
    );
  }
}
