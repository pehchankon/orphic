import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

class CategoryItemCard extends StatelessWidget {
  final String name;
  final String imgURL;
  final colors = [
    Color(0xFFF5D4C1),
    Color(0xFFFDEBC9),
    Color(0xFFD0F1EB),
    Color(0xFFFFAC56),
    Color(0xFFDED2F9)
  ];
  final _random = new Random();

  CategoryItemCard({Key? key, required this.name, required this.imgURL})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 148,
      width: 164,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: colors[_random.nextInt(colors.length)],
        // border: Border.all(color: Colors.black, width: 2.0),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: GoogleFonts.raleway(
                fontSize: 16,
                color: Color(0xFF191D21),
                fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 15.5),
          Expanded(child: Center(child: Image.network(imgURL,fit: BoxFit.scaleDown))),
        ],
      ),
    );
  }
}
