import 'package:flutter/material.dart';
import 'package:portfolio/components/card_language.dart';
import 'package:portfolio/models/me.dart';
import 'package:portfolio/style.dart';

class LanguageSection extends StatelessWidget {
  const LanguageSection({super.key});

  static const double photoRadius = 52;
  static final boxBorderRadius = BorderRadius.circular(16);
  
  Widget _buildFloatingPhoto() => Material(
        elevation: 12,
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(photoRadius),
        child: const CircleAvatar(
          backgroundColor: Style.black,
          radius: photoRadius + 10,
          child: CircleAvatar(
            radius: photoRadius,
            foregroundImage: AssetImage('assets/images/seiji_amasawa.jpg'),
            backgroundColor: Colors.transparent,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    final photo = _buildFloatingPhoto();

    final box = Container(
        margin: const EdgeInsets.only(right: 90, top: 28),
        padding: const EdgeInsets.all(12),
        width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: boxBorderRadius,
          color: Style.black,
        ),
        child: Wrap(
          spacing: 0.04 * width,
          runSpacing: 20,
          children: Me.languages.map((l) => CardLanguage(language: l)).toList(),
        ));

    return Stack(alignment: Alignment.topRight, children: [
      box,
      Positioned(
        right: photoRadius,
        child: photo,
      ),
    ]);
  }
}
