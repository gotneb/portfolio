import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/views/home/section_about.dart';
import 'package:portfolio/views/home/section_buttons.dart';
import 'package:portfolio/views/home/section_language.dart';
import 'package:portfolio/views/home/section_projects.dart';

import 'package:portfolio/style.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  Widget _buildHiragana(
    String text, {
    required TextStyle style,
  }) =>
      Material(
        elevation: 16,
        color: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: const ShapeDecoration(
            shape: StadiumBorder(),
            color: Colors.white,
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
    final height = MediaQuery.sizeOf(context).height;

    return ScrollConfiguration(
      // Hide annoying scrollbar
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: ListView(
        shrinkWrap: true,
        children: [
          Gap(0.1 * height),
          const AboutSection(),
          const Gap(32),
          const ButtonsSection(),
          const Gap(32),
          _buildTitle(title: 'Languages', hiragana: '私が話す言語'),
          const Gap(4),
          const LanguageSection(),
          const Gap(32),
          _buildTitle(title: 'Projects', hiragana: 'プロジェクト'),
          const Gap(32),
          const ProjectsSection(),
          // const Gap(32),
          // _buildTitle(title: 'Screenshots', hiragana: 'ビデオゲームのスクリーンショット'),
          // const Gap(32),
          // const GamesSection(),
          const Gap(48),
        ],
      ),
    );
  }
}
