import 'package:flutter/material.dart';

class BackButton extends StatelessWidget {
  const BackButton({Key? key,required this.color}) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        padding: EdgeInsets.only(left: 17, right: 8, top: 14, bottom: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: color,
        ),
        child: Icon(
          Icons.arrow_back_ios,
          color: Color(0xFF3D3D3D),
          size: 20,
        ),
      ),
    );
  }
}
