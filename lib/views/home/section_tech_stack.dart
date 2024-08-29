import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gap/gap.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/style.dart';

class TechStackSection extends StatelessWidget {
  const TechStackSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final spacing = screenWidth / 8;
    const gap = Gap(16);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 1st column
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          _techBrand(name: 'Flutter (App & Web Dev)', icon: BoxIcons.bxl_flutter),
          gap,
          _techBrand(name: 'Kotlin', icon: FontAwesomeIcons.connectdevelop),
          gap,
          _techBrand(name: 'Jetpack Compose', icon: FontAwesome.android_brand),
          gap,
          _techBrand(name: 'Godot (GDScript | Game Dev)'),
          gap,
          _techBrand(name: 'Docker (still studying)', icon: FontAwesome.docker_brand),
        ]),
        Gap(spacing),
        // 2nd column
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          _techBrand(name: 'C++', icon: BoxIcons.bxl_c_plus_plus),
          gap,
          _techBrand(name: 'Rust', icon: FontAwesomeIcons.rust),
          gap,
          _techBrand(name: 'Python', icon: FontAwesomeIcons.python),
          gap,
          _techBrand(name: 'Golang', icon: FontAwesomeIcons.golang)
        ]),
        Gap(spacing),
        // 3rd column
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          _techBrand(name: 'PostgreSQL', icon: BoxIcons.bxl_postgresql),
          gap,
          _techBrand(name: 'MongoDB', icon: BoxIcons.bxl_mongodb),
          gap,
          _techBrand(name: 'API Development', icon: BoxIcons.bx_cloud),
          gap,
          _techBrand(name: 'Linux', icon: FontAwesomeIcons.linux)
        ]),
      ],
    );
  }

  Widget _techBrand({required String name, IconData icon = FontAwesomeIcons.gamepad}) {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      FaIcon(icon, color: Style.sideColor, size: 28),
      const Gap(12),
      Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: Style.blue2,
            border: Border.all(color: Style.black),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(name, style: GoogleFonts.roboto(color: Colors.white, fontSize: 16))),
    ]);
  }
}
