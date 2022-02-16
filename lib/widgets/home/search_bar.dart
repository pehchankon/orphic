import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 354,
      height: 53,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xFFF8F8FA),
        border: Border.all(color: Color(0xFFE5E3E3)),
      ),
      child: Row(
        children: [
          SizedBox(width: 15),
          Icon(Icons.search, color: Color(0x66302F3C)),
          SizedBox(width: 8),
          Text(
            'Search for a category',
            style: GoogleFonts.poppins(
              color: Color(0x66302F3C),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
