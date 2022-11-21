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
