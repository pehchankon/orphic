import 'package:flutter/material.dart';
import '../widgets/cart_button.dart';
import '../widgets/home/home_title.dart';
import '../widgets/home/location_button.dart';
import '../widgets/home/category_item_card.dart';
import '../widgets/home/search_bar.dart';
import '../database/category_db.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import '../screens/category.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Color(0xFFFCFEFF)),
    );

    return Scaffold(
      backgroundColor: Color(0xFFFCFEFF),
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0, right:30, top: 51),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LocationButton(),
                CartButton(color: Color(0xFFF8F8FA)),
              ],
            ),
            SizedBox(height: 19),
            HomeTitle(),
            SizedBox(height: 20),
            SearchBar(),
            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.only(left: 5.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Popular',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF3D3D3D),
                ),
              ),
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 22.5),
                  child: gridBuilder(context),
                ))
          ],
        ),
      ),
    );
  }

  Widget gridBuilder(BuildContext context) {
    final categories = CategoryDB.instance.categories;
    return GridView.count(
      padding: EdgeInsets.zero,
      mainAxisSpacing: 15,
      crossAxisSpacing: 15,
      physics: BouncingScrollPhysics(),
      crossAxisCount: 2,
      children: List.generate(
        categories.length,
        (index) => GestureDetector(
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CategoryPage(
                  name: categories[index].name,
                  imgURL: categories[index].imgURL,
                ),
              ),
            );
            SystemChrome.setSystemUIOverlayStyle(
              SystemUiOverlayStyle(statusBarColor: Color(0xFFFCFEFF)),
            );
          },
          child: CategoryItemCard(
            name: categories[index].name,
            imgURL: categories[index].imgURL,
          ),
        ),
      ),
    );
  }
}
