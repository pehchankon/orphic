import 'package:flutter/material.dart';
import '../widgets/add_cart/top_bar.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/add_cart/selection_widget.dart';
import '../models/selection_item.dart';

class AddCart extends StatelessWidget {
  const AddCart({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.white),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopBar(),
          SizedBox(height: 27),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 21),
            child: Column(
              children: [
                Text(
                  name,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF3D3D3D),
                  ),
                ),
                SelectionWidget(
                  item: SelectionItem(
                    name: 'Choose Size',
                    list: [
                      SelectionListItem(name: 'Small - 6"', price: 218),
                      SelectionListItem(name: 'Medium - 10"', price: 312),
                      SelectionListItem(name: 'Large - 14"', price: 416),
                    ],
                  ),
                ),
                SelectionWidget(
                  item: SelectionItem(
                    name: 'Select Crust',
                    list: [
                      SelectionListItem(name: 'Classic Hand tossed'),
                      SelectionListItem(name: 'Thin Crust'),
                      SelectionListItem(name: 'Cheese Burst', price: 21.50, isExtra: true),
                    ],
                  ),
                ),
                SelectionWidget(
                  item: SelectionItem(
                    name: 'Add ons',
                    isRequired: false,
                    list: [
                      SelectionListItem(name: 'Add Mushroom', price: 2.50,isExtra: true),
                      SelectionListItem(name: 'Cheese Burst', price: 2.50, isExtra: true),
                    ],
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
