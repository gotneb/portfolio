import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/views/home/section_about.dart';
import 'package:portfolio/views/home/section_language.dart';
import 'package:portfolio/views/home/section_projects.dart';

import 'package:portfolio/style.dart';
import 'package:portfolio/views/home/section_quote.dart';
import 'package:portfolio/views/home/section_tech_stack.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
    required this.useFullScreen,
  });

  final bool useFullScreen;

  Widget _buildHiragana(
    String text, {
    required TextStyle style,
  }) =>
      Material(
        elevation: 16,
        shadowColor: Style.sideColor,
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(26),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: const ShapeDecoration(
            shape: StadiumBorder(),
            color: Style.sideColor,
          ),
          child: Text(text, style: style),
        ),
      );

  Widget _buildTitle({
    required String title,
    required String hiragana,
  }) =>
      Row(children: [
        Text(title, style: Style.normalTitleStyle),
        const Gap(12),
        _buildHiragana(hiragana, style: Style.normalJpTitleStyle),
      ]);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    final footer = SizedBox(
      width: width,
      child: Center(
          child: Icon(
        BoxIcons.bxs_game,
        size: 48,
        shadows: const [
          Shadow(blurRadius: 4, color: Colors.black, offset: Offset(2, 2))
        ],
        color: Colors.white.withOpacity(0.5),
      )),
    );

    final padedContent = Padding(
      padding:
          EdgeInsets.symmetric(horizontal: useFullScreen ? 12 : 0.1 * width),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Gap(24),
        _buildTitle(title: 'Languages', hiragana: '私の言語'),
        const Gap(24),
        const LanguageSection(),
        const Gap(24),
        _buildTitle(title: 'Technologies', hiragana: 'テクノロジースタック'),
        const Gap(32),
        const TechStackSection(),
        const Gap(32),
        _buildTitle(title: 'Projects', hiragana: 'プロジェクト'),
        const Gap(32),
        const ProjectsSection(),
        const Gap(32),
        const QuoteSection(),
        const Gap(94),
        Center(
          child: SelectableText(
            'The design of this site is heavily inspired from https://daginatsuko.com\nPlease take a look at Daginatsuko\' site, he has a great passion for his work too.',
            textAlign: TextAlign.center,
            style: Style.descriptionProject,
          ),
        ),
        const Gap(50),
        footer,
        const Gap(60)
      ]),
    );

    return ListView(
      children: [
        AboutSection(useFullScreen: useFullScreen),
        const Gap(4),
        padedContent,
      ],
    );
  }
}
