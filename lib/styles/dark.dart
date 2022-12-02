/*
  I know it's clumsy and I could do a class for that,
  'dark mode' and light mode are the same, only changing properties,
  so I could use inheritance for that. Pretty sure I'll do it, but not know.
*/

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const background = Color.fromARGB(255, 30, 30, 30);
const primary = Colors.indigo;
const secondary = Colors.white;

final titleStyle = GoogleFonts.archivo(
  color: secondary,
  fontSize: 44,
  fontWeight: FontWeight.bold,
  letterSpacing: 1.6,
);

final subTitleStyle = GoogleFonts.quicksand(
  fontSize: 20,
  letterSpacing: 1.2,
  color: Colors.grey[200]!,
  fontWeight: FontWeight.w500,
);

final about = GoogleFonts.quicksand(
  fontSize: 14,
  fontWeight: FontWeight.w600,
  letterSpacing: 1,
  color: Colors.grey[400],
);

// Projects styles
final smallAbout = GoogleFonts.quicksand(
  fontSize: 12,
  fontWeight: FontWeight.w600,
  color: Colors.grey[400],
);

final normalAbout = GoogleFonts.quicksand(
  fontSize: 14,
  fontWeight: FontWeight.w600,
  color: Colors.grey[400],
);
// ===============