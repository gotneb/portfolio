import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Style {
  static const mainColor = Colors.white;
  static const greyColor = Colors.grey;
  static const sideColor = Colors.blueAccent;
  static const sideColor2 = Colors.black;
  static const sideColor3 = Colors.pinkAccent;

  static const Color black = Color(0xFF232528);
  static const Color black2 = Color(0xFF100b00);

  static const Color blue = Color(0xFF111525);
  static const Color blue2 = Color(0xFF191F36);

  static const Color background = blue;

  static const textShadow = Shadow(
    color: Colors.black,
    blurRadius: 2,
    offset: Offset(2.2, 2.2),
  );

  static final titleStyle = GoogleFonts.roboto(
    color: mainColor,
    fontSize: 44,
    fontWeight: FontWeight.bold,
    shadows: [textShadow],
  );

  static final subTitleStyle = GoogleFonts.roboto(
    color: sideColor,
    fontSize: 28,
    fontWeight: FontWeight.bold,
    shadows: [textShadow],
  );

  static final normalTitleStyle = GoogleFonts.roboto(
    color: mainColor,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.2,
  );

  static final normalJpTitleStyle = GoogleFonts.notoSansJp(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.2,
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
    color: mainColor.withOpacity(0.85),
    fontSize: 15,
    fontWeight: FontWeight.w400,
    letterSpacing: 1,
  );

  static final langDescription = GoogleFonts.notoSansJp(
    color: mainColor.withOpacity(0.7),
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );

  // ********************************************************
  // Projects
  // ********************************************************
  static final titleProject = GoogleFonts.roboto(
    color: mainColor,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static final descriptionProject = GoogleFonts.roboto(
    color: greyColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  // ********************************************************
  // Quote
  // ********************************************************
  static final quoteText = GoogleFonts.notoSansJp(
    fontSize: 55,
    fontWeight: FontWeight.w300,
  );

  static final quoteAuthor = GoogleFonts.notoSansJp(
    fontSize: 22,
    letterSpacing: 1,
  );

  static final quoteRef = GoogleFonts.notoSansJp(
    fontSize: 16,
  );
}
