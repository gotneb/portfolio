import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/views/home/section_about.dart';
import 'package:portfolio/views/home/section_language.dart';
import 'package:portfolio/views/home/section_projects.dart';

import 'package:portfolio/style.dart';

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

    final padedContent = Padding(
      padding: EdgeInsets.symmetric(horizontal: useFullScreen ? 12 : 0.1 * width),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        //_buildTitle(title: 'Languages', hiragana: '私が話す言語'),
        //const Gap(4),
        const Gap(24),
        _buildTitle(title: 'Languages', hiragana: '私の言語'),
        const Gap(24),
        const LanguageSection(),
        const Gap(32),
        _buildTitle(title: 'Projects', hiragana: 'プロジェクト'),
        const Gap(32),
        const ProjectsSection(),
        const Gap(48),
      ]),
    );

    return ScrollConfiguration(
      // Hide annoying scrollbar
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: ListView(
        children: [
          AboutSection(useFullScreen: useFullScreen),
          const Gap(4),
          padedContent,
        ],
      ),
    );
  }
}
