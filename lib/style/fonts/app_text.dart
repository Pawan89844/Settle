import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  final String data;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextAlign? textAlign;
  const AppText(this.data,
      {super.key,
      this.color,
      this.fontWeight,
      this.fontSize,
      this.textAlign = TextAlign.center});

  @override
  Widget build(BuildContext context) {
    return Text(data,
        textAlign: textAlign,
        style: GoogleFonts.roboto(
            color: color, fontWeight: fontWeight, fontSize: fontSize));
  }
}
