import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

class HomeTitle extends StatelessWidget {
  const HomeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle style = GoogleFonts.poppins(
      fontSize: 24,
      fontWeight: FontWeight.w900,
      color: Color(0xFF3D3D3D),
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('Your favorite      ', style: style),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("dishes in ", style: style),
            Text("3D", style: style.copyWith(color: Color(0xFFFFC914))),
            SizedBox(width: 5),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 32.162),
              child: Transform.rotate(
                angle: -math.pi / 8,
                child: Image.network(
                  "https://s3-alpha-sig.figma.com/img/a59f/1aa0/86f5bb3a50a38ba1d64a690d702ee12b?Expires=1646006400&Signature=ECiR6q1yD4OwD31c~OGgi0kLNP385LsI8GQArikc9jkpCDa3lOdZS1gjf3RL~DGaLdCz6MOHLunH7noffZbtwbto~8K3MawKsfN2I2l59e4dLDpgr~Ues0JIGHsR76ZYBzvFDrgfueZRP0pVj~g9zIdq78FOC140mFjAU9gO08O0e6FPrEO2QT-szuS90O0SOFXIdj67DftoHg4jSaP1iwWXJJCvFCWIuQNVuq~gq67T45qBUES4QOPEzVIBQZOG0hSZrtvt8qFm82cbu3l9gAU-waWu60CmsCkEOMKVhgr-WZlnp88WNBi2NyW2HWLqmLG13VADvVsfGgl-ugC6gQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
                  fit: BoxFit.scaleDown,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
