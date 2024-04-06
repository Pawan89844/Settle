import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppHeading extends StatelessWidget {
  final String data;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  const AppHeading(this.data,
      {super.key,
      this.color,
      this.fontWeight = FontWeight.bold,
      this.fontSize = 25.0});

  @override
  Widget build(BuildContext context) {
    return Text(data,
        style: GoogleFonts.playfairDisplay(
            color: color, fontWeight: fontWeight, fontSize: fontSize));
  }
}
