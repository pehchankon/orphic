import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemName extends StatelessWidget {
  final String name;
  final String imgURL;

  ItemName({Key? key, required this.name, required this.imgURL}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          name,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF3D3D3D),
          ),
        ),
        SizedBox(width: 8),
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 25),
          child: Image.network(
            imgURL,
            fit: BoxFit.scaleDown,
          ),
        ),
      ],
    );
  }
}
