import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Style {
  static const mainColor = Colors.white;
  static const sideColor = Colors.blue;
  static const sideColor2 = Colors.black;

  static const textShadow = Shadow(
    color: Colors.black,
    blurRadius: 4,
    offset: Offset(2, 2),
  );

  static final titleStyle = GoogleFonts.roboto(
    color: mainColor,
    fontSize: 42,
    fontWeight: FontWeight.bold,
    shadows: [textShadow],
  );

  static final subTitleStyle = GoogleFonts.roboto(
    color: sideColor,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    shadows: [textShadow],
  );

  static final normalTitleStyle = GoogleFonts.roboto(
    color: mainColor,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static final normalJpTitleStyle = GoogleFonts.notoSansJp(
    color: sideColor2,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static final normalStyle = GoogleFonts.roboto(
    color: mainColor,
    fontSize: 18,
    fontWeight: FontWeight.w300,
  );

  static final sideTitle = GoogleFonts.montserrat(
    color: mainColor,
    fontSize: 26,
    fontWeight: FontWeight.bold,
    letterSpacing: 2,
  );

  static final japaneseSideTitle = GoogleFonts.notoSansJp(
    color: sideColor,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.5,
  );

  // ********************************************************
  // Languages
  // ********************************************************
  static final langTitle = GoogleFonts.notoSansJp(
    color: mainColor,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static final langNormal = GoogleFonts.notoSansJp(
    color: mainColor,
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );

  // ********************************************************
  // Projects
  // ********************************************************
  static final titleProject = GoogleFonts.roboto(
    color: mainColor,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static final descriptionProject = GoogleFonts.roboto(
    color: mainColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
}
