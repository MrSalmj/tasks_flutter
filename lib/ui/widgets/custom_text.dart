import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final text;
  final decoration;
  final size;
  final color;
  final letterSpacing;
  final fontWeight;
  final textAlign;

  const CustomText(
      {Key? key,
      @required this.text,
      this.decoration,
      this.size,
      this.color,
      this.letterSpacing,
      this.fontWeight,
      this.textAlign})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          decoration: decoration,
          fontSize: size,
          color: color,
          letterSpacing: letterSpacing,
          fontWeight: fontWeight),
      textAlign: textAlign,
    );
  }
}
