import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Style {
  static const mainColor = Colors.white;
  static const sideColor = Colors.blue;

  static final titleStyle = GoogleFonts.roboto(
    color: mainColor,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static final sideTitle = GoogleFonts.montserrat(
    color: mainColor,
    fontSize: 26,
    fontWeight: FontWeight.w400,
  );

  static final japaneseSideTitle = GoogleFonts.notoSans(
    color: sideColor,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
}