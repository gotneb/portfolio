import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/models/language.dart';
import 'package:portfolio/models/me.dart';

class LanguageSection extends StatelessWidget {
  const LanguageSection({super.key});

  Widget _buildCard(Language language) {
    Widget flag = CircleAvatar(
      radius: 24,
      foregroundImage: AssetImage(language.flag),
    );

    flag = Column(children: [const Gap(12), flag]);

    final coloredIndicator =
        Container(width: 6, height: 200, color: Colors.black);

    final content = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(12),
          Text(language.name),
          const Gap(4),
          Text(language.profiency)
        ]);

    return Container(
      width: 300,
      height: 90,
      color: Colors.white,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            coloredIndicator,
            const Gap(12),
            flag,
            const Gap(12),
            content,
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return Container(
        width: double.maxFinite,
        padding: const EdgeInsets.all(20),
        color: Colors.teal,
        child: Wrap(
          spacing: 0.04 * width,
          runSpacing: 20,
          children: Me.languages.map((l) => _buildCard(l)).toList(),
        ));
  }
}
