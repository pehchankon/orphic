import 'package:flutter/material.dart';
import '../../models/selection_item.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectionWidget extends StatelessWidget {
  SelectionWidget({Key? key, required this.item}) : super(key: key);
  SelectionItem item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              item.name,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xFF3D3D3D),
              ),
            ),
            buildReqButton(),
          ],
        )
      ],
    );
  }

  Widget buildReqButton() {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xFFFFC914),
      ),
      child: Text(
        'REQUIRED',
        style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w600, letterSpacing: 1),
      ),
    );
  }

  
}
