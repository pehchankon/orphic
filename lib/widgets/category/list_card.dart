import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../screens/add_cart.dart';

class ListCard extends StatefulWidget {
  ListCard({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  State<ListCard> createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  bool imageVisible = false;
  late Widget viewImage = buildViewButton();
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFFFFF4E8), Color(0x00FFFFFF)],
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: SizedBox(
              width: 190,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Color(0xFF121212),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Medium | Cheese , onion, and tomato pure',
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                      color: Color(0xFF121212),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '\$12',
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Color(0xFF121212),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              child: viewImage,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildViewButton() {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => AddCart(name: 'Veggie Exotic Pizza')),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(13),
            bottomRight: Radius.circular(13),
            topRight: Radius.zero,
            bottomLeft: Radius.zero,
          ),
          color: Color(0xFFE86A12),
        ),
        alignment: Alignment.bottomRight,
        width: 71,
        height: 29,
        child: Center(
          child: Text(
            'View',
            style: GoogleFonts.mulish(
              fontWeight: FontWeight.w800,
              fontSize: 13,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildImage() {
    return Container(
      alignment: Alignment.bottomRight,
      width: 100,
      height: 100,
      child: Image.network(
        "https://s3-alpha-sig.figma.com/img/ecd2/40ce/7c550720ab20af0840548a832e0f9a28?Expires=1646006400&Signature=eIYGoleZBXXBxa~6JEKuqVhu8auG5Ej59WxA2TWxTHuI8oZVaW8pwK5JvQTKeox1xsw6bFX1zH~1aNn7yTkh7qx2nApZ9XGIlzq4qHjIT6e8S6DmfJZE5E4Ks0rSZ-i6UW6xU3CIjScRRSfXAf4vYEcD7c6JzVcLhtwgbZ08vbjAhcsFwt8RY5bxzP6qI6A77ozWlzhQkEB-a4wI9tgC6SLFvGGC4CRqOGWiF6ULGqoXgaep~YiKtTM-N7JJHJGhlsAXMHKEeqKHe1DVEkavdlBGHvfKvk4Eq2a~IrsvJ4P~z-iGwy6BteYp0f8TsfnV-pzoKW5DQ6XFIN3Kjoj1~Q__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
