import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

class RewardsCard extends StatelessWidget {
  final name = "Rewards";
  final imgURL =
      "https://s3-alpha-sig.figma.com/img/c172/0dd9/7c641e5531df92687b8804005d20dbbe?Expires=1646006400&Signature=LLzyE5xARQqdNwf8BhGRJl5khWqUhPkd8zinvbvN8s~UiAng88GZz0XsHHePuNnfgSaH2UOR5F2UdoyVqGgh6tuAnCqvNnMpjOhvWnnDS0pgpOHrSOEnvGK3djotIjsacyO4lmNc4NOymgAua4h2Cn1N1C6lUbXLP3q79OOXuhRHHelJ46UgDInatuDIxwAlhANopgHzq0Tn6FtZlB2NWdntlHa-PH~ywWjlPikD7y~ULtfEjb~tUuqlOPERlO1A6fDL-~6nBQcN0kc8qb7QPIuxKGDqExg2TGicayfwCVyj7IiD5AAxHtDT20abrNuCAxZQqbuV79YGKhWhrnnYFw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA";

  final _random = new Random();

  RewardsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 148,
      width: 164,
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color(0xFFF7F7F7),
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
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15.5),
          Expanded(
              child:
                  Center(child: Image.network(imgURL, fit: BoxFit.scaleDown))),
        ],
      ),
    );
  }
}
