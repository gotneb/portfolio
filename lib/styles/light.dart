/*
  I know it's clumsy and I could do a class for that,
  'dark mode' and light mode are the same, only changing properties,
  so I could use inheritance for that. Pretty sure I'll do it, but not know.
*/

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const background = Colors.white;
const primary = Colors.indigo;
const secondary = Color.fromARGB(255, 30, 30, 30);

final titleStyle = GoogleFonts.archivo(
  color: secondary,
  fontSize: 44,
  fontWeight: FontWeight.bold,
  letterSpacing: 1.6,
);

final subTitleStyle = GoogleFonts.quicksand(
  fontSize: 20,
  letterSpacing: 1.2,
  color: Colors.black.withOpacity(0.7),
  fontWeight: FontWeight.w500,
);

final about = GoogleFonts.quicksand(
  fontSize: 14,
  fontWeight: FontWeight.w600,
  letterSpacing: 1,
  color: secondary,
);

// Projects styles
final smallAbout = GoogleFonts.quicksand(
  fontSize: 13,
  fontWeight: FontWeight.w600,
  color: secondary,
);

final normalAbout = GoogleFonts.quicksand(
  fontSize: 14,
  fontWeight: FontWeight.w600,
  height: 1.5,
  color: secondary,
);
// ===============