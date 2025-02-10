import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/models/me.dart';
import 'package:portfolio/models/tech_stack.dart';
import 'package:portfolio/style.dart';

class TechStackSection extends StatelessWidget {
  const TechStackSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Wrap(
      spacing: 0.2 * screenWidth,
      runSpacing: 8,
      children: Me.stack.map((stack) {
        return SizedBox(
          // TODO: Design will overflow, fix it later
          width: 150,
          child: _techBrand(stack));
      }).toList(),
    );
  }

  Widget _techBrand(TechStack stack) {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      FaIcon(stack.icon, color: Style.sideColor, size: 28),
      const Gap(12),
      Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: Style.blue2,
            border: Border.all(color: Style.black),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(stack.name,
              style: GoogleFonts.roboto(color: Colors.white, fontSize: 16))),
    ]);
  }
}
