import 'package:flutter/material.dart';
import 'package:portfolio/components/card_language.dart';
import 'package:portfolio/models/me.dart';
import 'package:portfolio/style.dart';

class LanguageSection extends StatelessWidget {
  const LanguageSection({super.key});

  static const double photoRadius = 52;
  static const double cardHeight = 120;
  static const double cardWidth = 300;
  static final boxBorderRadius = BorderRadius.circular(16);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    var spacing = 0.02 * width;
    spacing >= 24 ? spacing : 24;

    final box = Container(
        width: double.maxFinite,
        // height: 4 * cardHeight,
        decoration: BoxDecoration(borderRadius: boxBorderRadius),
        child: Wrap(
          spacing: spacing,
          runSpacing: 2 * spacing,
          children: Me.languages
              .map((l) => CardLanguage(
                    language: l,
                    height: cardHeight,
                    width: (0.6 * width) / Me.languages.length,
                  ))
              .toList(),
        ));

    return box;
  }
}
