import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartButton extends StatelessWidget {
  CartButton({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.local_mall_outlined,
            color: Color(0xFF3D3D3D),
          ),
          Container(
            width: 29,
            height: 29,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                "0",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF3D3D3D),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
