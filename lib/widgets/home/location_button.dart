import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationButton extends StatelessWidget {
  const LocationButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.place,
          color: Color(0xFFFF8100),
        ),
        SizedBox(width: 6),
        Text(
          "Bistro Claytopia",
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xFF191D21),
          ),
        ),
      ],
    );
  }
}